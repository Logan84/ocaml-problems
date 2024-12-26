let arr = ["a"; "b"; "c"; "d"; "e"];;

let print_string_list arr = 
        let rec print_item arr = 
                match arr with
                | [] -> print_endline ""
                | h :: t -> print_string h; print_string " "; print_item t
        in
        print_item arr


let rec last_two arr = 
        match arr with 
                | [] -> None
                | [ _ ] -> None
                | [x ; y] -> Some (x, y)
                | _ :: t -> last_two t

let () = 
        print_string_list arr;
        match last_two arr with 
                | None -> print_endline "No last two"
                | Some (x, y) -> print_endline x; print_endline y
