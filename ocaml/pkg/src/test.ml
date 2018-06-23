open Batteries

let f input = "output"

let cases = [("input", "output"); ("input", "output")]

let build cases =
    let mapper (input, output) =
        ( "case"
        , `Quick
        , fun () -> Alcotest.check Alcotest.string input output (f input) )
    in
    List.map mapper cases

let () = Alcotest.run "alcotest" [("cases", build cases)]
