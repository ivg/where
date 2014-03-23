type ('a,+'f) p = 'a -> 'f

type 'a t =
  | Not of 'a t
  | And of 'a t * 'a t
  | Or  of 'a t * 'a t
  | Pre of ('a -> bool)

let rec truth clause s = match clause with
  | Not f -> not(truth f s)
  | And (f,g) -> truth f s && truth g s
  | Or  (f,g) -> truth f s || truth g s
  | Pre f -> f s

let (||) x y = Or (x,y)
let (&&) x y = And (x,y)
let not   x = Not x

let it obj = obj
let must tst = Pre (fun x -> tst x)
let make pro tst eta = Pre (fun x -> tst (pro x) eta)
let (??) = make
let all = Pre (fun _ -> true)

let is pro eta = make pro (=) eta
let (=) = is
let (<) pro eta = make pro (<) eta
let (>) pro eta = make pro (>) eta
let (<=) pro eta = make pro (<=) eta
let (>=) pro eta = make pro (>=) eta

