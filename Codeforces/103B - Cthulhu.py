def dfs(node):
    if visited[node]:
        return
    visited[node] = True
    global total_visited
    total_visited += 1
    for p in edges[node]:
        dfs(p)

n, m = map(int, input().split())
if n != m:
    print("NO")
    exit()

edges = [[] for _ in range(n + 1)]
visited = [False] * (n + 1)
total_visited = 0

for _ in range(m):
    a, b = map(int, input().split())
    edges[a].append(b)
    edges[b].append(a)

dfs(1)
if total_visited < n:
    print("NO")
else:
    print("FHTAGN!")
