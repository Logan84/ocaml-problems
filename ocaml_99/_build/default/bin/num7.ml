type 'a node = 
        | One of 'a
        | Many of 'a node list;;

let rec print_node_list l = 
        match l with 
        | [] -> print_string "]"
        | One h :: t -> print_string h; print_node_list t 
        | Many h :: t -> print_string ("[" ); print_node_list h;  print_node_list t

let flatten l =
        let rec aux l flat_l = 
                match l with
                | [] -> flat_l
                | One h :: t -> aux t (h :: flat_l)
                | Many h :: t -> aux t (aux h flat_l)
                in
                List.rev (aux l [])

let () =
        let node_list = [One "a"; Many [One "b"; Many [One "c" ;One "d"]; One "e"]] in
        let flattened = flatten node_list in
        print_string"[";
        print_node_list node_list;
        print_endline "";
        match flattened with
                | [] -> print_endline "empty list"
                | _ ->  List.iter (fun x -> print_string x) flattened;

        print_endline ""
