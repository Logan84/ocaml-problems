let rec last arr = 
        match arr with 
        | [] -> None
        | [x] -> Some x
        | _ :: t -> last t
