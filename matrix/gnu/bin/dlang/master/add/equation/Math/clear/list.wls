Clear{f};
f[x_] := x ^ 2;
{f[2], f["word"], f[Newton] = x ^ 2;}
DownValues[f] = f[x_] + 1;
