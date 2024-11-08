/*
 * @lc app=leetcode.cn id=10 lang=csharp
 *
 * [10] 正则表达式匹配
 */

// @lc code=start
// 动态规划，看了题解才写出来的，而且写完就再也看不懂了 …… 
// 353/353 cases passed (68 ms)
// Your runtime beats 87.95 % of csharp submissions
// Your memory usage beats 27.71 % of csharp submissions (38.7 MB)
public class Solution {
    public bool IsMatch(string s, string p) {
        int slen = s.Length, plen = p.Length;
        bool[][] dp = new bool[slen+1][];
        for(int i = 0; i < slen+1;i++) dp[i] = new bool[plen+1];
        dp[0][0] = true; 
        for(int j = 0; j < plen; j++) if(p[j] == '*' && dp[0][j-1]) dp[0][j+1] = true; 

        for(int i = 0; i < slen; i++){
            for(int j = 0; j < plen; j++){
                if(s[i] == p[j] || p[j] == '.') dp[i+1][j+1] = dp[i][j];
                if(p[j] == '*'){
                    if(p[j-1] != s[i] && p[j-1] != '.') dp[i+1][j+1] = dp[i+1][j-2+1];
                    else dp[i+1][j+1] = dp[i][j+1] || dp[i+1][j] || dp[i+1][j-1];
                }
            }
        }
        return dp[slen][plen];
    }
}
// @lc code=end

