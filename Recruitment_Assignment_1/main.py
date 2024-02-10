from collections import deque

def solution(array, start, goal):
    rows, cols = len(array), len(array[0])
    
    # BFS Traversal
    visited = set()
    queue = deque([(start, [])])

    while queue:
        current, path = queue.popleft()
        if current == goal:
            return path + [current]

        if current in visited:
            continue

        visited.add(current)
        row, col = current

        moves = [(row - 1, col), (row + 1, col), (row, col - 1), (row, col + 1)]

        for move in moves:
            new_row, new_col = move
            if 0 <= new_row < rows and 0 <= new_col < cols and array[new_row][new_col] != 1 and move not in visited:
                queue.append((move, path + [current]))

    return None

map_array = [
    [0, 0, 0, 0, 0],
    [2, 1, 0, 1, 0],
    [0, 1, 0, 1, 0],
    [0, 1, 0, 0, 0],
    [0, 0, 0, 1, 3],
]

# Solution:  [(1, 0), (0, 0), (0, 1), (0, 2), (0, 3), (0, 4), (1, 4), (2, 4), (3, 4), (4, 4)]
# These are the coordinates of the path from start to goal

#Position 
start_position = (1, 0)
goal_position = (4, 4)

path = solution(map_array, start_position, goal_position)

if path:
    print("Optimal Path:", path)
else:
    print("No path found.")
