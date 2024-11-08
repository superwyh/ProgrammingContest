/*
 * @lc app=leetcode.cn id=504 lang=csharp
 *
 * [504] 七进制数
 */

// @lc code=start
// 直接连除就可以
// 241/241 cases passed (60 ms)
// Your runtime beats 96.61 % of csharp submissions
// Your memory usage beats 15.25 % of csharp submissions (36.3 MB)
public class Solution
{
    public string ConvertToBase7(int num)
    {
        if (num == 0) return "0";
        int n = 0, s = 1;
        while (num != 0)
        {
            int t = num % 7;
            num = num / 7;
            n += s * t;
            s *= 10;
        }
        return n.ToString();

    }
}
// @lc code=end

