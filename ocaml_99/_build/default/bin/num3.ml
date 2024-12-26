let print_string_list arr = 
        let rec print_item arr = 
                match arr with
                | [] -> print_endline ""
                | h :: t -> print_string h; print_string " "; print_item t
        in
        print_item arr

let rec at place arr = 
        match arr with 
                | [] -> None
                | h :: t -> if place = 0 then Some h else at (place - 1) t;;

let () = 
        let arr = ["a"; "b"; "c"; "d"; "e"] in
        print_string_list arr;
        let placeholder = 2 in
        match at placeholder arr with
                | None -> print_endline"no item at that place"
                | Some x -> print_endline (x ^ " at the " ^ string_of_int placeholder ^ " place")
