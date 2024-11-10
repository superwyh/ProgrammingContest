class Solution(object):
    def generateParenthesis(self, n):
        """
        :type n: int
        :rtype: List[str]
        """
        if n == 0:
            return []
        dp = [['']] + [['()']]  # 初始化0组和1组括号情况

        for i in range(2, n + 1):
            current = []
            for j in range(i):
                for p in dp[j]:
                    for q in dp[i - 1 - j]:
                        current.append('({}){}'.format(p, q))
            dp.append(current)
        
        return dp[n]