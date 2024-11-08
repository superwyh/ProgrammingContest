/*
 * @lc app=leetcode.cn id=458 lang=csharp
 *
 * [458] 可怜的小猪
 */

// @lc code=start
// 动态规划
// 18/18 cases passed (16 ms)
// Your runtime beats 100 % of csharp submissions
// Your memory usage beats 16.67 % of csharp submissions (26.9 MB)
public class Solution
{
    public int PoorPigs(int buckets, int minutesToDie, int minutesToTest)
    {
        if (buckets == 1)
            return 0;
        int[,] n = new int[buckets + 1, buckets + 1];
        n[0, 0] = 1;
        int t = minutesToTest / minutesToDie;
        int[,] f = new int[buckets, t + 1];
        for (int i = 0; i < buckets; i++)
            f[i, 0] = 1;
        for (int j = 0; j <= t; j++)
            f[0, j] = 1;
        for (int i = 1; i < buckets; i++)
        {
            n[i, 0] = 1;
            n[i, i] = 1;
            for (int j = 1; j < i; j++)
                n[i, j] = n[i - 1, j - 1] + n[i - 1, j];
            for (int j = 1; j <= t; j++)
                for (int k = 0; k <= i; k++)
                    f[i, j] += f[k, j - 1] * n[i, i - k];
            if (f[i, t] >= buckets)
                return i;
        }
        return 0;
    }
}
// @lc code=end
