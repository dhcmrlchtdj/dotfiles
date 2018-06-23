OCB_FLAGS := \
	-tags 'warn(+a-4),warn_error(-a+31)' \
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
	-use-menhir -tag explain \
	-pkg ppx_deriving.std \
	-pkg re \
	-pkg alcotest \
	-pkg batteries
OCB := ocamlbuild $(OCB_FLAGS)

mlis := $(patsubst %.ml,%,$(wildcard src/*.ml))

.PHONY: main
main: byte

.PHONY: main
main: native

.PHONY: test
test: main
	@$(OCB) src/test.byte
	@./test.byte
	@echo "something" | ./main -

.PHONY: byte
byte: $(mlis)
	@$(OCB) src/main.byte
	@ln -sf ./main.byte ./main

.PHONY: native
native: $(mlis)
	@$(OCB) src/main.native
	@ln -sf ./main.native ./main

.PHONY: $(mlis)
$(mlis):
	-@$(OCB) $@.inferred.mli

.PHONY: clean
clean:
	@ocamlbuild -clean
	@rm -rf ./main

.PHONY: fmt
fmt:
	ocamlformat -i src/*.ml
	ocp-indent -i src/*.ml
