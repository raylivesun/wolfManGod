module matrix.gnu.bin.dlang.master.add.equation.queue.music;

void main() {
    import std.stdio;
    import std.algorithm;
    import std.array;

    const int n = 5;
    int[][] matrix = [[0, 1, 1, 0, 0],
    [0, 0, 0, 1, 0],
    [0, 1, 0, 1, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0]];
    int[] weights = [1, 2, 3, 4, 5];
    int[] start = [0, 0];
    int[] end = [4, 4];
    int maxWeight = 10;

    int[] queue;
    int[] parent;
    int[] distance;

    parent.length = n * n;
    distance.length = n * n;

    parent.fill(-1);
    distance.fill(int.max);
    distance[start[0] * n + start[1]] = 0;
    queue.length = n * n;
    queue.insert(0, start[0] * n + start[1]);
    while (!queue.empty) {
        int current = queue.front;
        queue.popFront;
        int x = current / n;
        int y = current % n;
        foreach (i, dx; [-1, 0, 1]) {
            foreach (j, dy; [-1, 0, 1]) {
                int nx = x + dx;
                int ny = y + dy;
                if (nx >= 0 && nx < n && ny >= 0 && ny < n &&
                matrix[nx][ny] == 1 &&
                distance[nx * n + ny] > distance[current] + matrix[x][y]) {
                    distance[nx * n + ny] = distance[current] + matrix[x][y];
                    parent[nx * n + ny] = current;
                    queue.insert(0, nx * n + ny);
                    if (nx * n + ny == end[0] * n + end[1]) {
                        // parent
                        int[] path = new int[n * n];
                        int pathIndex = 0;
                        int currentNode = nx * n + ny;
                        while (currentNode!= -1) {
                            path[pathIndex++] = currentNode;
                            currentNode = parent[currentNode];
                        }
                    }
    
                }
            }
        }
    }
}
