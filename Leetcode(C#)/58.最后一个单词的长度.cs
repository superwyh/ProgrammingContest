/*
 * @lc app=leetcode.cn id=58 lang=csharp
 *
 * [58] 最后一个单词的长度
 */

// @lc code=start
// 直接反着找，找到空格以后就退出，n就是最后一个字母的长度
// 58/58 cases passed (56 ms)
// Your runtime beats 87.36 % of csharp submissions
// Your memory usage beats 40.46 % of csharp submissions (35.8 MB)
public class Solution {
    public int LengthOfLastWord(string s) {
        int n = 0;
        for (int i = s.Length - 1; i >= 0; i--)
        {
            if (s[i] != ' ') n++;  
            if (s[i] == ' ' && n != 0) break;  
        }
        return n;

    }
}
// @lc code=end

