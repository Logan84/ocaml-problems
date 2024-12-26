let arr = [1; 2; 3; 4; 5; 6];;

let rec last arr = 
        match arr with 
        | [] -> None
        | [x] -> Some x
        | _ :: t -> last t

let print_list arr = 
        let rec print_item arr =
                match arr with 
                | [] -> print_endline ""
                | h :: t -> print_int h; print_string " "; print_item t
        in
        print_item arr

let () = 
        print_list arr;
        match last arr with
                | None -> print_endline "no last value"
                | Some x -> print_int x; print_endline " "
