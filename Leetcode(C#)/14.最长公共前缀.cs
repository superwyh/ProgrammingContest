/*
 * @lc app=leetcode.cn id=14 lang=csharp
 *
 * [14] 最长公共前缀
 */

// @lc code=start
// 从每个单词第一个字母开始找，发现不一样的就退出
// 124/124 cases passed (84 ms)
// Your runtime beats 97.56 % of csharp submissions
// Your memory usage beats 50.76 % of csharp submissions (38.9 MB)
public class Solution
{
    public string LongestCommonPrefix(string[] strs)
    {
        if (strs.Length == 0) return "";

        int p = 0;
        while (true)
        {
            if (strs[0].Length <= p) break;
            bool s = true;
            for (int i = 1; i < strs.Length; i++)
            {
                if ((strs[i].Length <= p) || (strs[i][p] != strs[0][p]))
                {
                    s = false;
                    break;
                }
            }
            if (s) p++;
            else break;
        }
        return strs[0].Substring(0, p);

    }
}
// @lc code=end

