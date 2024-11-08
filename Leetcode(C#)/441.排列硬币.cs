/*
 * @lc app=leetcode.cn id=441 lang=csharp
 *
 * [441] 排列硬币
 */

// @lc code=start
// 1335/1335 cases passed (20 ms)
// Your runtime beats 95 % of csharp submissions
// Your memory usage beats 5 % of csharp submissions (26.3 MB)
public class Solution {
    public int ArrangeCoins(int n) {
        return (int)(Math.Sqrt(2 * (long)n + 0.25) - 0.5); // 这里必须转成long，否则有数据会爆掉
    }
}
// @lc code=end

