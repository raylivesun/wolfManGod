module matrix.gnu.bin.dlang.master.express.manacial;

void main() {
    import std.stdio;

    // Define a 2D array
    int[][] matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];

    // Print the original matrix
    writefln("Original Matrix:\n");
    foreach (row; matrix) {
        writeln(row);
    }
    writeln("\n");

    // Transpose the matrix
    int[][] transposedMatrix = transpose(matrix);

    // Print the transposed matrix
    writefln("Transposed Matrix:\n");
    foreach (row; transposedMatrix) {
        writeln(row);
    }
    writeln("It's ", currentTemperature(), " degrees at the moment.");
}

/**
 * Transpose a 2D array
 *
 * @param matrix The input 2D array
 * @return The transposed 2D array
 */
 int[][] transpose(int[][] matrix) {
    int rows = matrix.length;
    int cols = matrix[0].length;
    int[][] transposedMatrix = new int[cols][rows];

    foreach (i; 0..rows) {
        foreach (j; 0..cols) {
            transposedMatrix[j][i] = matrix[i][j];
        }
    }
    return transposedMatrix;
}

