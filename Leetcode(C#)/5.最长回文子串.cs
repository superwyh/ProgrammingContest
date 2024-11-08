/*
 * @lc app=leetcode.cn id=5 lang=csharp
 *
 * [5] 最长回文子串
 */

// @lc code=start
// 动态规划
public class Solution {
    public string LongestPalindrome(string s) {
        int n = s.Length;
        if(n < 2){
            return s;
        }
        int maxLen = 1;
        int begin = 0;
        bool[,] dp = new bool[n,n];
        for(int i = 0; i < n; i++){
            dp[i,i] = true;
        }
        char[] charArray = s.ToCharArray();
        for(int j = 1; j < n; j++){
            for(int i = 0; i < j; i++){
                if(charArray[i] != charArray[j]){
                    dp[i,j] = false;
                }else{
                    if(j - i < 3){
                        dp[i,j] = true;
                    }else{
                        dp[i,j] = dp[i+1,j-1];
                    }
                }
                if(dp[i,j] && j - i + 1 > maxLen){
                    maxLen = j - i + 1;
                    begin = i;
                }
            }
        }
        return s.Substring(begin, maxLen);

    }
}
// @lc code=end

