let run callback =
    let exe = Sys.argv.(0) in
    let usage () = Printf.printf "Usage: %s [file | -]\n" exe in
    let argv = Sys.argv |> Array.to_list |> List.tl in
    let aux = function
        | ["-h"] | ["--help"] -> usage ()
        | ["-"] -> CCIO.read_all stdin |> callback
        | [file] -> CCIO.File.read_exn file |> callback
        | _ -> usage ()
    in
    aux argv


let main input = print_endline input

let () = run main
