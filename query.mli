type 'a t

val (//):   'a t -> 'a Where.t -> 'a t
val select: 'a t -> 'a Where.t -> 'a t
val (/@):  'a t -> ('a -> 'b) ->  'b t
val map: ('a -> 'b) -> 'a t -> 'b t
val fold: ('a -> 'b -> 'a) -> 'a -> 'b t -> 'a
val reduce: ('a -> 'a -> 'a) -> 'a t -> 'a
val iter: ('a -> unit) -> 'a t -> unit

val enlist: 'a t -> 'a list
val of_list: 'a list -> 'a t
val of_array: 'a array -> 'a t
