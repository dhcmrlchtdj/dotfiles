# copy from
# https://github.com/git/git/blob/v2.41.0-rc2/contrib/completion/git-prompt.sh
#
# Copyright (C) 2006,2007 Shawn O. Pearce <spearce@spearce.org>
# Distributed under the GNU General Public License, version 2.0.

# Helper function to read the first line of a file into a variable.
# __git_eread requires 2 arguments, the file path and the name of the
# variable, in that order.
__git_eread () {
	test -r "$1" && IFS=$'\r\n' read -r "$2" <"$1"
}

# see if a cherry-pick or revert is in progress, if the user has committed a
# conflict resolution with 'git commit' in the middle of a sequence of picks or
# reverts then CHERRY_PICK_HEAD/REVERT_HEAD will not exist so we have to read
# the todo file.
__git_sequencer_status () {
	local todo
	if test -f "$g/CHERRY_PICK_HEAD"
	then
		r="|CHERRY-PICKING"
		return 0;
	elif test -f "$g/REVERT_HEAD"
	then
		r="|REVERTING"
		return 0;
	elif __git_eread "$g/sequencer/todo" todo
	then
		case "$todo" in
			p[\ \	]|pick[\ \	]*)
				r="|CHERRY-PICKING"
				return 0
				;;
			revert[\ \	]*)
				r="|REVERTING"
				return 0
				;;
		esac
	fi
	return 1
}

# __git_ps1 accepts 1 arguments, format string
__git_ps1 () {
	# preserve exit status
	local exit=$?
	local detached=no
	local printf_format="${1}"

	local repo_info rev_parse_exit_code
	repo_info="$(git rev-parse --git-dir --is-inside-git-dir --is-bare-repository --is-inside-work-tree --short HEAD 2>/dev/null)"
	rev_parse_exit_code="$?"

	if [ -z "$repo_info" ]; then
		return $exit
	fi

	local short_sha=""
	if [ "$rev_parse_exit_code" = "0" ]; then
		short_sha="${repo_info##*$'\n'}"
		repo_info="${repo_info%$'\n'*}"
	fi
	local inside_worktree="${repo_info##*$'\n'}"
	repo_info="${repo_info%$'\n'*}"
	local bare_repo="${repo_info##*$'\n'}"
	repo_info="${repo_info%$'\n'*}"
	local inside_gitdir="${repo_info##*$'\n'}"
	local g="${repo_info%$'\n'*}"

	if [ "true" = "$inside_worktree" ] &&
		[ "$(git config --bool bash.hideIfPwdIgnored)" != "false" ] &&
		git check-ignore -q .
		then
			return $exit
	fi

	local sparse=""
	if [ "$(git config --bool core.sparseCheckout)" = "true" ]; then
		sparse="|SPARSE"
	fi

	local r=""
	local b=""
	local step=""
	local total=""
	if [ -d "$g/rebase-merge" ]; then
		__git_eread "$g/rebase-merge/head-name" b
		__git_eread "$g/rebase-merge/msgnum" step
		__git_eread "$g/rebase-merge/end" total
		r="|REBASE"
	else
		if [ -d "$g/rebase-apply" ]; then
			__git_eread "$g/rebase-apply/next" step
			__git_eread "$g/rebase-apply/last" total
			if [ -f "$g/rebase-apply/rebasing" ]; then
				__git_eread "$g/rebase-apply/head-name" b
				r="|REBASE"
			elif [ -f "$g/rebase-apply/applying" ]; then
				r="|AM"
			else
				r="|AM/REBASE"
			fi
		elif [ -f "$g/MERGE_HEAD" ]; then
			r="|MERGING"
		elif __git_sequencer_status; then
			:
		elif [ -f "$g/BISECT_LOG" ]; then
			r="|BISECTING"
		fi

		if [ -n "$b" ]; then
			:
		elif [ -h "$g/HEAD" ]; then
			# symlink symbolic ref
			b="$(git symbolic-ref HEAD 2>/dev/null)"
		else
			local head=""
			if ! __git_eread "$g/HEAD" head; then
				return $exit
			fi
			# is it a symbolic ref?
			b="${head#ref: }"
			if [ "$head" = "$b" ]; then
				detached=yes
				# b="$(git describe --tags --exact-match HEAD 2>/dev/null)" ||
				b="$short_sha..."
				b="($b)"
			fi
		fi
	fi

	if [ -n "$step" ] && [ -n "$total" ]; then
		r="$r $step/$total"
	fi

	local conflict="" # state indicator for unresolved conflicts
	if [[ $(git ls-files --unmerged 2>/dev/null) ]]; then
		conflict="|CONFLICT"
	fi

	local w=""
	local i=""
	local s=""
	local u=""
	local h=""
	local c=""

	if [ "true" = "$inside_gitdir" ]; then
		if [ "true" = "$bare_repo" ]; then
			c="BARE:"
		else
			b="GIT_DIR!"
		fi
	elif [ "true" = "$inside_worktree" ]; then
		git diff --no-ext-diff --quiet || w="*"
		git diff --no-ext-diff --cached --quiet || i="+"
		if [ -z "$short_sha" ] && [ -z "$i" ]; then
			i="#"
		fi

		if [ "$(git config --bool core.sparseCheckout)" = "true" ]; then
			h="?"
		fi
	fi

	b=${b##refs/heads/}

	local f="$h$w$i$s$u"
	local gitstring="$c$b${f:+$f}${sparse}$r${conflict}"

	printf -- "$printf_format" "$gitstring"

	return $exit
}
