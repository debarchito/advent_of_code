let run_day day part =
  match (day, part) with
  | 1, 1 -> Tttf.Day01_1.solve ()
  | 1, 2 -> Tttf.Day01_2.solve ()
  | d, p -> 
      Printf.printf "Day %d, Part %d doesn't exist..?!\n" d p;
      0

let () =
  let day, part = 
    if Array.length Sys.argv >= 3 then
      int_of_string Sys.argv.(1), int_of_string Sys.argv.(2)
    else if Array.length Sys.argv = 2 then
      int_of_string Sys.argv.(1), 1
    else
      1, 1
  in
  let _ = run_day day part in
  ()
