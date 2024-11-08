/*
 * @lc app=leetcode.cn id=476 lang=csharp
 *
 * [476] 数字的补数
 */

// @lc code=start
// 149/149 cases passed (20 ms)
// Your runtime beats 76.32 % of csharp submissions
// Your memory usage beats 31.58 % of csharp submissions (26.1 MB)
public class Solution
{
    public int FindComplement(int num)
    {
        int m = 1;
        while (m < num)
            m = (m << 1) | 1;
        return num ^ m;
    }
}
// @lc code=end
