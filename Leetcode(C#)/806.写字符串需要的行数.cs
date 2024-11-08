/*
 * @lc app=leetcode.cn id=806 lang=csharp
 *
 * [806] 写字符串需要的行数
 */

// @lc code=start
// 直接遍历
// 27/27 cases passed (136 ms)
// Your runtime beats 65.38 % of csharp submissions
// Your memory usage beats 26.92 % of csharp submissions (41.6 MB)
public class Solution
{
    public int[] NumberOfLines(int[] widths, string s)
    {
        int lines = 1;
        int width = 0;
        foreach (int ch in s)
        {
            width += widths[ch - 'a'];

            if (width > 100)
            {
                lines++;
                width = widths[ch - 'a'];
            }
        }

        return new int[] { lines, width };
    }
}
// @lc code=end
