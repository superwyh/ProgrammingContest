/*
 * @lc app=leetcode.cn id=647 lang=csharp
 *
 * [647] 回文子串
 */

// @lc code=start
// 从中往外遍历
// 130/130 cases passed (60 ms)
// Your runtime beats 75.23 % of csharp submissions
// Your memory usage beats 91.74 % of csharp submissions (35.1 MB)
public class Solution {
    public int CountSubstrings(string s) {
        if(s == null || s.Length == 0) return 0;
        int n = 1;
        for(int i = 1; i < s.Length; i++)
        {
            int r = i;
            int l = i;
            while(l >= 0 && r < s.Length && s[l--] == s[r++]) n++;
            r = i;
            l = i - 1;
            while(l >= 0 && r < s.Length && s[l--] == s[r++]) n++;
        }
        return n;

    }
}
// @lc code=end

