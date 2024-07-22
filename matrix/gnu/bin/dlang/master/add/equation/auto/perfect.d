module perfect;

void main() {
    import std.stdio;

    // Define the matrix
    double[][] matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];

    // Define the vector
    double[] vector = [10, 11, 12];

    // Perform matrix addition
    double[][] result = addMatrix(matrix, vector);

    // Print the result
    writeln("Result:");
    foreach (row; result) {
        writefln("%s", row);
    }
    writeln();
}

/**
 * Performs matrix addition with the given matrix and vector.
 *
 * @param matrix The input matrix.
 * @param vector The input vector.
 * @return The resulting matrix.
 */
 double[][] addMatrix(double[][] matrix, double[] vector) {
    int rows = matrix.length;
    int cols = matrix[0].length;

    // Create the result matrix with the same dimensions
    double[][] result = new double[rows][cols];

    // Perform matrix addition
    foreach (i; 0..rows) {
        foreach (j; 0..cols) {
            result[i][j] = matrix[i][j] + vector[j];
        }
    }

    return result;
}
