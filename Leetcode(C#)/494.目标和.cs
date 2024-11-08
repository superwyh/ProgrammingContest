/*
 * @lc app=leetcode.cn id=494 lang=csharp
 *
 * [494] 目标和
 */

// @lc code=start
// 动态规划
// 139/139 cases passed (80 ms)
// Your runtime beats 82.3 % of csharp submissions
// Your memory usage beats 24.78 % of csharp submissions (39.7 MB)
public class Solution {
    public int FindTargetSumWays(int[] nums, int target) {
        int sum = 0;
        foreach (var item in nums)sum += item;
        int n = (sum - target)/2;
        if (n<0 || (sum - target)% 2 != 0) return 0;
        int len = nums.Length;
        int[,] dp = new int[len+1,n+1];
        dp[0, 0] = 1;
        for (int i = 1; i <= len; i++)
        {
            for (int j = 0; j <= n; j++)
                {
                dp[i, j] = dp[i - 1, j];
                if (j >= nums[i-1]) dp[i, j] += dp[i - 1, j - nums[i-1]];
                }
            }
            return dp[len, n];
    }
}
// @lc code=end

