/*
 * @lc app=leetcode.cn id=202 lang=csharp
 *
 * [202] 快乐数
 */

// @lc code=start
// 有个规律，只要出现了4，就会不快乐。那么只要发现出现4，就返回false
// 404/404 cases passed (36 ms)
// Your runtime beats 27.85 % of csharp submissions
// Your memory usage beats 92.31 % of csharp submissions (27.6 MB)
public class Solution
{
    public bool IsHappy(int n)
    {
        while (true)
        {
            if (n == 4) return false;
            if (n == 1) return true;
            int m = 0;
            while (n > 0)
            {
                int t = n % 10;
                m += t * t;
                n /= 10;
            }
            n = m;
        }
    }
}
// @lc code=end

