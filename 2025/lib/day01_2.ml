let solve () =
  let total_zero = ref 0 in
  let position = ref 50 in
  
  try
    while true do
      let line = input_line stdin in
      let direction = line.[0] in
      let count = int_of_string (String.sub line 1 (String.length line - 1)) in
      
      (match direction with
      | 'R' ->
          for _ = 1 to count do
            position := (!position + 1) mod 100;
            if !position = 0 then
              total_zero := !total_zero + 1
          done
      | 'L' ->
          for _ = 1 to count do
            position := !position - 1;
            if !position < 0 then
              position := !position + 100;
            if !position = 0 then
              total_zero := !total_zero + 1
          done
      | _ -> ());
    done;
    !total_zero
  with End_of_file ->
    Printf.printf "Day 01, Part 2: %d\n" !total_zero;
    !total_zero
