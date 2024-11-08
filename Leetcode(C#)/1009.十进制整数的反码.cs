/*
 * @lc app=leetcode.cn id=1009 lang=csharp
 *
 * [1009] 十进制整数的反码
 */

// @lc code=start
// 和476题完全一样
// 128/128 cases passed (24 ms)
// Your runtime beats 34.78 % of csharp submissions
// Your memory usage beats 39.13 % of csharp submissions (26.1 MB)
public class Solution
{
    public int BitwiseComplement(int n)
    {
        int m = 1;
        while (m < n)
            m = (m << 1) | 1;
        return n ^ m;
    }
}
// @lc code=end
