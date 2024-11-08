/*
 * @lc app=leetcode.cn id=1475 lang=csharp
 *
 * [1475] 商品折扣后的最终价格
 */

// @lc code=start
// 遍历
// 103/103 cases passed (136 ms)
// Your runtime beats 50.71 % of csharp submissions
// Your memory usage beats 46.65 % of csharp submissions (42.6 MB)
public class Solution
{
    public int[] FinalPrices(int[] prices)
    {
        for (int i = 0; i < prices.Length - 1; i++)
        {
            for (int j = i + 1; j < prices.Length; j++)
            {
                if (prices[j] <= prices[i])
                {
                    prices[i] -= prices[j];
                    break;
                }
            }
        }
        return prices;
    }
}
// @lc code=end
