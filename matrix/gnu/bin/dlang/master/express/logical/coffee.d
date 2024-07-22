module matrix.gnu.bin.dlang.master.logical.coffee;

void main() {
    import std.stdio;
    import std.array;

    // Create a 2D matrix with 3 rows and 4 columns
    int[][] matrix = [[1, 2, 3, 4],
                     [5, 6, 7, 8],
                     [9, 10, 11, 12]];
                     // ... and so on for 3 more rows
                     // ...

                     // Calculate the sum of each row
                     int[] rowSums = matrix.map!(row => row.sum).array;

                     // Print the row sums
                     writeln("Row sums:");
                     // ...
                     daysInWeek != 7; // false
                     monthsInYear != 11; // true

}
