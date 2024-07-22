module matrix.gnu.bin.dlang.master.add.info;

void main() {
    import std.stdio;

    int[][] matrix1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
    int[][] matrix2 = [[9, 8, 7], [6, 5,
    4], [3, 2, 1]];
    int[][] resultMatrix;

    if (matrix1.length != matrix2.length || matrix1[0].length != matrix2[0].length) {
        writeln("Matrices must have the same dimensions.");
        return;
    }

    resultMatrix.length = matrix1.length;
    foreach (ref row, ref resultRow; resultMatrix) {
        resultRow.length = matrix1[0].length;
        foreach (ref cell, ref resultCell; resultRow) {
            resultCell = matrix1[row - 1 - row.iterator.index]
                         [resultRow - 1 - cell.iterator.index] +
                       matrix2[row - 1 - row.iterator.index]
                       [resultRow - 1 - cell.iterator.index];
        }
        row.reverse();
    }
    writefln("Result matrix:\n");
    foreach (row; resultMatrix) {
        writefln("%~*s", row.length * 4, row);
    }
    writefln("");
}
