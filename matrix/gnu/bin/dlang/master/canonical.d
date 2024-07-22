module matrix.gnu.bin.dlang.master.canonical;

void main() {
    import std.stdio, std.array, std.conv;

    // Initialize a 3x3 matrix
    auto matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];

    // Print the original matrix
    writeln("Original Matrix:");
    foreach (row; matrix) {
        writeln(row);
    }
    writeln("\n");

    // Transpose the matrix
    auto transposedMatrix = transpose(matrix);

    // Print the transposed matrix
    writeln("Transposed Matrix:");
    foreach (row; transposedMatrix) {
        writeln(row);
    }


/**
 * Transposes a matrix using the row-major order.
 *
 * @param matrix The input matrix
 * @return The transposed matrix
 */
 void transpose(T)(T[][] matrix)
 if (isStaticArray!T && isStaticArray!T[0])
 {
     import std.algorithm.slice;

     auto rows = matrix.length;
     auto cols = matrix[0].length;
     T[][] transposedMatrix = new T[cols][rows];
     foreach (i; 0..cols) {
         transposedMatrix[i] = matrix[i].sliced;
     }
     return transposedMatrix;
 }
 // ...
readf(" %s", &studentCount);
// ...
readf(" %s", &teacherCount);
// ...
}