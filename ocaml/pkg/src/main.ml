open Batteries

let start callback =
    let usage () = Printf.printf "Usage: %s [file | -]\n" exe in
    let argv = Sys.argv |> Array.to_list |> List.tl in
    let chop = String.rchop ~n:1 in
    let aux = function
        | ["-h"] | ["--help"] -> usage ()
        | ["-"] -> IO.read_all stdin |> chop |> callback
        | [file] -> File.with_file_in file IO.read_all |> chop |> callback
        | _ -> usage ()
    in
    aux argv

let main input = print_endline input

let () = start main
