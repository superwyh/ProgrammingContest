/*
 * @lc app=leetcode.cn id=3 lang=csharp
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start
// 滑动窗口+哈希
// 987/987 cases passed (100 ms)
// Your runtime beats 21.39 % of csharp submissions
// Your memory usage beats 64.69 % of csharp submissions (38.7 MB)
public class Solution {
    public int LengthOfLongestSubstring(string s) {
        HashSet<char> set = new HashSet<char>();
        int max = 0, cur = 0;
        for (int i = 0; i < s.Length; i++)
        {
            cur = 1;
            set.Clear();
            set.Add(s[i]);
            for (int j = i + 1; j < s.Length; j++)
            {
                if (set.Contains(s[j])) break;
                set.Add(s[j]);
                cur = j - i + 1;
            }

            max = Math.Max(max, cur);
        }

        return max;

    }
}
// @lc code=end

