let rev arr = 
        let rec aux arr new_arr = 
        match arr with 
                | [] -> new_arr
                | h :: t -> aux t (h :: new_arr)
        in
        aux arr []

let print arr = 
        List.iter (fun x -> Printf.printf "%d " x) arr;
        print_newline ()

let () =
        let arr = [1; 2; 3; 4] in
        print arr;
        match rev arr with 
        | [] -> print_endline "empty list"
        | _ -> print (rev arr)
