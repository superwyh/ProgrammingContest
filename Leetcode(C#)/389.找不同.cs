/*
 * @lc app=leetcode.cn id=389 lang=csharp
 *
 * [389] 找不同
 */

// @lc code=start
// 异或
// 54/54 cases passed (80 ms)
// Your runtime beats 91.61 % of csharp submissions
// Your memory usage beats 50.97 % of csharp submissions (38.4 MB)
public class Solution
{
    public char FindTheDifference(string s, string t)
    {
        int a = 0;
        foreach (char c in s + t) a = c ^ a;
        return (char)a;
    }
}
// @lc code=end
