include Batteries.Enum

let of_array = Batteries.Array.enum
let of_list  = Batteries.List.enum
let select db clause = db // Where.truth clause
let (//) = select
let enlist = Batteries.List.of_enum
