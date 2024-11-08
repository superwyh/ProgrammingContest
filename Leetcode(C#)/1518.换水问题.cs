/*
 * @lc app=leetcode.cn id=1518 lang=csharp
 *
 * [1518] 换水问题
 */

// @lc code=start
// 64/64 cases passed (24 ms)
// Your runtime beats 50 % of csharp submissions
// Your memory usage beats 50 % of csharp submissions (26.1 MB)
public class Solution
{
    public int NumWaterBottles(int numBottles, int numExchange)
    {
        return numBottles + (numBottles - 1) / (numExchange - 1);
    }
}
// @lc code=end
