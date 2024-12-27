let rec print_string_list arr = 
        match arr with 
        | [] -> print_endline " "
        | h :: t -> print_string (h ^ " "); print_string_list t

(*this should only keep one copy of each consecutive unique element.*)
let rec compress arr =  
        match arr with
        | first :: (second :: _ as tail) -> if first = second then compress tail else first :: compress tail
        | compressed -> compressed


let () = 
        let list = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"] in
        print_string_list list;
        let compressed = compress list in
        print_string_list compressed;
