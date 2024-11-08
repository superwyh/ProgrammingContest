/*
 * @lc app=leetcode.cn id=461 lang=csharp
 *
 * [461] 汉明距离
 */

// @lc code=start
// 149/149 cases passed (20 ms)
// Your runtime beats 81.36 % of csharp submissions
// Your memory usage beats 44.07 % of csharp submissions (26.1 MB)
public class Solution
{
    public int HammingDistance(int x, int y)
    {
        int xor = x ^ y;
        int n = 0;
        while (xor > 0)
        {
            if ((xor & 1) == 1)
                n++;
            xor >>= 1;
        }
        return n;
    }
}
// @lc code=end
