Clear[f];
f[x_ ? EvenQ] := x;
f[x_ ? OddQ] := x ^ 2;
f[x_] := Sin[x];
(* list of arguments about the expression numeric*)
{f[1], f[2], f[3], f[4], f[3], f[Newton], f[Pi] = x ^ 2;}