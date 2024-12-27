(*This should turn consecutive elements into lists which will return a string list list*)
let pack arr = 
        let rec aux current_elem acum = function
                | [] -> []
                | [x] -> (x :: current_elem) :: acum
                | h :: (b :: _ as t) -> 
                        if h = b then aux (h :: current_elem) acum t
                        else aux [] ((h :: current_elem) :: acum) t
        in
        List.rev (aux [] [] arr)

let rec print_string_list arr = 
        match arr with 
        | [] -> print_endline " "
        | h :: t -> print_string (h ^ " "); print_string_list t

let rec print_string_list_list list = 
        match list with 
        | [] -> print_endline ""
        | h :: t -> print_string_list h; print_string_list_list t

let () = 
        let list = ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"] in
        print_string_list list;
        print_string_list_list (pack list)
