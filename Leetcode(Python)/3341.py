class Solution(object):
    def minTimeToReach(self, moveTime):
        """
        :type moveTime: List[List[int]]
        :rtype: int
        """
        import heapq

        n, m = len(moveTime), len(moveTime[0])
        arrival_time = [[float('inf')] * m for _ in range(n)]

        veltarunez = moveTime

        arrival_time[0][0] = 0
        heap = [(0, 0, 0)]  # (current_time, x, y)

        while heap:
            current_time, x, y = heapq.heappop(heap)

            if current_time > arrival_time[x][y]:
                continue

            if (x, y) == (n - 1, m - 1):
                continue

            for dx, dy in [(-1, 0), (1, 0), (0, -1), (0, 1)]:
                nx, ny = x + dx, y + dy

                if 0 <= nx < n and 0 <= ny < m:
                    earliest_departure = max(current_time, moveTime[nx][ny])
                    arrival = earliest_departure + 1 
                    if arrival < arrival_time[nx][ny]:
                        arrival_time[nx][ny] = arrival
                        heapq.heappush(heap, (arrival, nx, ny))

        return arrival_time[n - 1][m - 1]
