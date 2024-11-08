/*
 * @lc app=leetcode.cn id=1492 lang=csharp
 *
 * [1492] n 的第 k 个因子
 */

// @lc code=start
// 枚举
// 208/208 cases passed (20 ms)
// Your runtime beats 93.75 % of csharp submissions
// Your memory usage beats 62.5 % of csharp submissions (26.1 MB)
public class Solution
{
    public int KthFactor(int n, int k)
    {
        int d = 1;
        for (; d * d <= n; d++)
            if (n % d == 0 && --k == 0)
                return d;
        for (d = d - 1; d >= 1; d--)
        {
            if (d * d == n)
                continue;
            if (n % d == 0 && --k == 0)
                return n / d;
        }
        return -1;
    }
}
// @lc code=end
