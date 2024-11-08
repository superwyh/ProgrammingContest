/*
 * @lc app=leetcode.cn id=32 lang=csharp
 *
 * [32] 最长有效括号
 */

// @lc code=start
// 动态规划，又是看题解才写出来 …… 
// 231/231 cases passed (56 ms)
// Your runtime beats 91.86 % of csharp submissions
// Your memory usage beats 69.77 % of csharp submissions (36.6 MB)
public class Solution
{
    public int LongestValidParentheses(string s)
    {
        int maxlen = 0;
        int strlen = s.Length;
        int[] p = new int[strlen];
        for (int i = 0; i < strlen; i++)
        {
            if (s[i] == ')')
            {
                if ((i - 1) >= 0 && s[i - 1] == '(')
                {
                    p[i] = 2;
                    if ((i - 2) >= 0) p[i] += p[i - 2];
                }
                else if ((i - 1) >= 0 && p[i - 1] > 0)
                {
                    if ((i - p[i - 1] - 1) >= 0 && s[(i - p[i - 1] - 1)] == '(')
                    {
                        p[i] = p[i - 1] + 2;
                        if ((i - p[i - 1] - 2) >= 0) p[i] += p[i - p[i - 1] - 2];
                    }
                }
            }
            maxlen = Math.Max(p[i], maxlen);
        }

        return maxlen;
    }
}
// @lc code=end
