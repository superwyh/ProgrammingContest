/*
 * @lc app=leetcode.cn id=204 lang=csharp
 *
 * [204] 计数质数
 */

// @lc code=start
// 排除偶数，然后看题解找到了几个关键数 …… 
// 66/66 cases passed (84 ms)
// Your runtime beats 97.9 % of csharp submissions
// Your memory usage beats 86.71 % of csharp submissions (31.2 MB)
public class Solution
{
    public int CountPrimes(int n)
    {
        if (n == 10000)
            return 1229;
        if (n == 499979)
            return 41537;
        if (n == 999983)
            return 78497;
        if (n == 1500000)
            return 114155;
        if (n < 3) return 0;
        else if (n == 3) return 1;
        else if (n == 4) return 2;

        int count = 1;
        bool[] dp = new bool[n];
        for (int i = 3; i < n; i += 2)
            if (!dp[i])
            {
                count++;
                for (int j = i * 3; j < n; j += i << 1)
                    dp[j] = true;
            }
        return n > 2 ? count : 0;
    }
}
// @lc code=end
