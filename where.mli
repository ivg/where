(** Generic ``where'' queries  *)


type 'a t                                (** a query  *)
type ('a,+'f) p = 'a -> 'f              (** predicate  *)


(** constructs a projection *)
val it: ('a,'a) p

(** {2 Predicate constructors} *)
val must:('a -> bool) -> 'a t
val (??):('a,'f) p -> ('f -> 'f -> bool) -> 'f -> 'a t
val is:  ('a,'f) p -> 'f -> 'a t
val (=): ('a,'f) p -> 'f -> 'a t
val (>): ('a,'f) p -> 'f -> 'a t
val (<): ('a,'f) p -> 'f -> 'a t
val (>=): ('a,'f) p -> 'f -> 'a t
val (<=): ('a,'f) p -> 'f -> 'a t
val all: 'a t

(** {2 Combinators} *)
val (||): 'a t -> 'a t -> 'a t
val (&&): 'a t -> 'a t -> 'a t
val  not : 'a t -> 'a t

val truth: 'a t -> 'a -> bool
