let arr = [1; 2; 3; 4; 5; 6];;

let print_list arr = 
        let rec print_item arr =
                match arr with 
                | [] -> print_endline ""
                | h :: t -> print_int h; print_string " "; print_item t
        in
        print_item arr

let () = 
        print_list arr;
        match Ocaml_99.Num1.last arr with 
        | None -> print_endline "No ending"
        | Some a -> print_int a; print_endline ""
