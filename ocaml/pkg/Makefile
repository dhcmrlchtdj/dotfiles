OCB_FLAGS := \
	-tag 'color(always)' \
	-tag safe_string \
	-tag short_paths \
	-tag strict_sequence \
	-tag keep_locs \
	-tag keep_docs \
	-tag bin_annot \
	-tag principal \
	-tag nopervasives \
	-tag thread \
	-use-ocamlfind \
	-pkg ppx_deriving.std \
	-pkg batteries \
	-pkg re \
	-use-menhir -tag explain \
	-tags 'warn(+a-4),warn_error(-a+31)'
OCB := ocamlbuild $(OCB_FLAGS)

mlis := $(patsubst %.ml,%,$(wildcard src/*.ml))

main: $(mlis)
	@$(OCB) src/main.byte

jsoo: main
	js_of_ocaml --opt=3 --pretty ./main.byte

test: main
	@echo "something" | ./main.byte -

$(mlis):
	-@$(OCB) $@.inferred.mli

clean:
	@ocamlbuild -clean

.PHONY: main clean $(mlis)
