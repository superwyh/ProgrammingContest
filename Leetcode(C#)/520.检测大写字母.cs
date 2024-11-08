/*
 * @lc app=leetcode.cn id=520 lang=csharp
 *
 * [520] 检测大写字母
 */

// @lc code=start
// 550/550 cases passed (72 ms)
// Your runtime beats 47.92 % of csharp submissions
// Your memory usage beats 70.83 % of csharp submissions (38.1 MB)
public class Solution
{
    public bool DetectCapitalUse(string word)
    {
        bool up = word[0] - 97 < 0;
        int t = 0;
        for (int i = 1; i < word.Length; i++) 
            if (word[i] - 97 < 0) t++;
        if (t == 0)
            return true;
        if (up && t == word.Length - 1)
            return true;
        return false;
    }
}
// @lc code=end
