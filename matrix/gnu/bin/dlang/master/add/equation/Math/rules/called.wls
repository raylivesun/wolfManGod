Clear[f]
f[x_] := Sin[x];
f[x_ ? EvenQ] := x;
f[x_ ? OddQ] := x^2;

{f[1], f[2], f[3], f[4], f[5/4], f[Newton]}