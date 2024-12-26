let arr = [1; 2; 3; 4; 5; 6];;
let arr2 = ["a"; "b"; "c"; "d"; "e"];;

let print_list arr = 
        let rec print_item arr =
                match arr with 
                | [] -> print_endline ""
                | h :: t -> print_int h; print_string " "; print_item t
        in
        print_item arr

let print_string_list arr = 
        let rec print_item arr = 
                match arr with
                | [] -> print_endline ""
                | h :: t -> print_string h; print_string " "; print_item t
        in
        print_item arr

let () = 
        for i = 0 to Array.length Sys.argv - 1 do
                (*Printf.printf "[%i] %s\n" i Sys.argv.(i)*)
                print_int i
        done;
        print_string_list arr2;
        print_list arr;
