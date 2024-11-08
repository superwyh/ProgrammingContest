/*
 * @lc app=leetcode.cn id=338 lang=csharp
 *
 * [338] 比特位计数
 */

// @lc code=start
// 15/15 cases passed (92 ms)
// Your runtime beats 61.29 % of csharp submissions
// Your memory usage beats 96.13 % of csharp submissions (38.4 MB)
// public class Solution
// {
//     public int[] CountBits(int n)
//     {
//         int[] dp = new int[n + 1];
//         for (int i = 0; i <= n; i++)
//             if ((i & 1) == 0)
//                 dp[i] = dp[i / 2];
//             else
//                 dp[i] = dp[i - 1] + 1;
//         return dp;
//     }
// }
// 看题解学习的位运算法
// 15/15 cases passed (80 ms)
// Your runtime beats 98.71 % of csharp submissions
// Your memory usage beats 63.87 % of csharp submissions (38.6 MB)
public class Solution {
    public int[] CountBits(int n) {
        int[] ans = new int[n + 1];
        for (int i = 1; i <= n; i++) {
            ans[i] = ans[i & (i - 1)] + 1;
        }
        return ans;
    }
}
// @lc code=end
