Clear[a]
a = z*Sin[x] + z*Cos[y] + z*Cos[z] + z*Sin[x+y] + z*Cos[x+y+z];
FullForm[a]
(* logic of unit minor *)
Level[a, {-1}]
Level[a, {-2}]
Level[a, {-3}]
Level[a, {-4}]