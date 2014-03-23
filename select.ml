
let from_list lst clause =
  List.filter (Where.truth clause) lst

