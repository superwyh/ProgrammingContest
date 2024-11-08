/*
 * @lc app=leetcode.cn id=122 lang=csharp
 *
 * [122] 买卖股票的最佳时机 II
 */

// @lc code=start
// 就看前一项和后一项，只要大于0就计入利润
// 200/200 cases passed (80 ms)
// Your runtime beats 82.93 % of csharp submissions
// Your memory usage beats 73.8 % of csharp submissions (38.7 MB)
public class Solution
{
    public int MaxProfit(int[] prices)
    {
        int s = 0;

        for (int i = 1; i < prices.Length; i++)
        {
            int t = prices[i] - prices[i - 1];
            if (t > 0)
            {
                s = s + t;
            }
        }

        return s;
    }
}
// @lc code=end

