module matrix.gnu.bin.dlang.master.add.fact.obj;

void main() {
    import std.stdio;
    import std.conv;

    writeln("Enter two matrices (space-separated, each row on a new line):");

    int m, n, p, q;
    readln(m, n);
    readln(p, q);
    if (n != p) {
        writeln("Error: The number of columns in the first matrix must match the number of rows in the second matrix.");
        return;
    }
    int[][] matrix1 = new int[m][n];
    int[][] matrix2 = new int[p][q];
    int[][] result = new int[m][q];

    // Read the first matrix
    for (int i = 0; i < m; ++i) {
        foreach (int j, ref val; matrix1[i]) {
            readln(val);
        }
    }

    // Read the second matrix
    for (int i = 0; i < p; ++i) {
        foreach (int j, ref val; matrix2[i]) {
            readln(val);
        }
    }

    // Perform the addition
    for (int i = 0; i < m; ++i) {
        for (int j = 0; j < q; ++j) {
            result[i][j] = matrix1[i][j] + matrix2[i][j];
        }
        writeln();
    }
    writeln("Result:");
    foreach (int[] row; result) {
        foreach (int val; row) {
            write(val, " ");
        }
        writeln();
    }
    writefln("Memory usage: %s bytes", sizeof(result));
}

