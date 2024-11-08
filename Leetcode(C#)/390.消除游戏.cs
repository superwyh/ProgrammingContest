/*
 * @lc app=leetcode.cn id=390 lang=csharp
 *
 * [390] 消除游戏
 */

// @lc code=start
// 递归
// 3377/3377 cases passed (24 ms)
// Your runtime beats 75 % of csharp submissions
// Your memory usage beats 75 % of csharp submissions (26.2 MB)
public class Solution
{
    public int LastRemaining(int n)
    {
        return n == 1 ? 1 : 2 * (n / 2 + 1 - LastRemaining(n / 2));
    }
}
// @lc code=end
