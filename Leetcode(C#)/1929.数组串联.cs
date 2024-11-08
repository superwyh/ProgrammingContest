/*
 * @lc app=leetcode.cn id=1929 lang=csharp
 *
 * [1929] 数组串联
 */

// @lc code=start
// 一行解决，但是效率太低
// 91/91 cases passed (140 ms)
// Your runtime beats 54.69 % of csharp submissions
// Your memory usage beats 6.25 % of csharp submissions (47 MB)
// public class Solution {
//     public int[] GetConcatenation(int[] nums) {
//         return nums.Concat(nums).ToArray();
//     }
// }

// 常规解法
// 91/91 cases passed (136 ms)
// Your runtime beats 67.19 % of csharp submissions
// Your memory usage beats 68.75 % of csharp submissions (46.7 MB)
public class Solution
{
    public int[] GetConcatenation(int[] nums)
    {
        int[] ans = new int[2 * nums.Length];
        for (int i = 0; i < nums.Length; i++) ans[i + nums.Length] = ans[i] = nums[i];
        return ans;
    }
}
// @lc code=end
