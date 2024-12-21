let test arr exp () = 
        let ans = Ocaml_99.Num1.last arr in 
        ans = exp

let suite = 
        [ test [1;2;3;4;5] (Some 5);
        test [6;5;4;3;2] (Some 2);
        ]

let () = 
        print_endline "hello"
