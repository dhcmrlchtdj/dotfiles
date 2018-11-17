.PHONY: ocaml
ocaml:
	-cp -n `pwd`/ocaml/ocamlinit ~/.ocamlinit
	-cp -n `pwd`/ocaml/ocamlformat ~/.ocamlformat
	-cp -n `pwd`/ocaml/ocp-indent.conf ~/.ocp/ocp-indent.conf
