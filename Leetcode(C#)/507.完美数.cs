/*
 * @lc app=leetcode.cn id=507 lang=csharp
 *
 * [507] 完美数
 */

// @lc code=start
// 98/98 cases passed (36 ms)
// Your runtime beats 50 % of csharp submissions
// Your memory usage beats 63.64 % of csharp submissions (27.7 MB)
public class Solution
{
    public bool CheckPerfectNumber(int num)
    {
        int[] primes = new int[] { 2, 3, 5, 7, 13, 17, 19, 31 };
        foreach (int prime in primes)
        {
            if (PN(prime) == num)
                return true;
        }
        return false;
    }

    private int PN(int p)
    {
        return (1 << (p - 1)) * ((1 << p) - 1);
    }
}
// @lc code=end
