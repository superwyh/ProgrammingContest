/*
 * @lc app=leetcode.cn id=191 lang=csharp
 *
 * [191] 位1的个数
 */

// @lc code=start
// 直接位操作
// 601/601 cases passed (20 ms)
// Your runtime beats 80.59 % of csharp submissions
// Your memory usage beats 65.4 % of csharp submissions (23.2 MB)
public class Solution
{
    public int HammingWeight(uint n)
    {
        if (n == 0) return 0;
        uint a = 0;
        while (n > 0)
        {
            a += (n & 1);
            n >>= 1;
        }
        return (int)a;
    }
}
// @lc code=end
