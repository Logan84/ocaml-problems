let length arr = 
        let rec aux arr num = 
                match arr with 
                | [] -> num
                | _ :: t -> aux t (num + 1)
        in
        aux arr 0

let rec recursive_length arr =
        match arr with 
                | [] -> 0
                | _ :: t -> 1 + recursive_length t

let () = 
        let arr = [1; 2; 3] in 
        let length_of_arr = length arr in
        print_string "the length of the array is: ";
        print_int (length_of_arr);
        print_endline " ";
        if length_of_arr < 10
        then print_string "Using the recursive function, length of the array is: ";
        print_int(recursive_length arr);
        print_endline " ";
