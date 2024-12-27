let is_palindrome arr =
        if arr = (List.rev arr)
        then true
        else false

let print arr = 
        List.iter (fun x -> print_string x ) arr;
        print_endline " "

let () = 
        let arr = ["t"; "a"; "c"; "o"; "c"; "a"; "t"] in 
        print arr;
        if is_palindrome arr then print_endline "This is a palindrome"
        else print_endline "This is not a palindrome"
