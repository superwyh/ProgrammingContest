/*
 * @lc app=leetcode.cn id=709 lang=csharp
 *
 * [709] 转换成小写字母
 */

// @lc code=start
// 试试语言自带的效率如何 …… 果然不太行。
// 114/114 cases passed (88 ms)
// Your runtime beats 18.75 % of csharp submissions
// Your memory usage beats 27.08 % of csharp submissions (38.1 MB)
// public class Solution {
//     public string ToLowerCase(string s) {
//         return s.ToLower();
//     }
// }
// 大小写的十进制差32
// 114/114 cases passed (72 ms)
// Your runtime beats 93.75 % of csharp submissions
// Your memory usage beats 91.67 % of csharp submissions (36.1 MB)
public class Solution
{
    public string ToLowerCase(string s)
    {
        StringBuilder t = new StringBuilder();
        for (int i = 0; i < s.Length; i++)
        {
            if (s[i] <= 'Z' && s[i] >= 'A')
                t.Append((char)(s[i] + 32));
            else
                t.Append(s[i]);
        }
        return t.ToString();
    }
}
// @lc code=end
