/*
 * @lc app=leetcode.cn id=189 lang=csharp
 *
 * [189] 轮转数组
 */

// @lc code=start
// 直接翻转三次就可以
// 38/38 cases passed (144 ms)
// Your runtime beats 97.3 % of csharp submissions
// Your memory usage beats 17.84 % of csharp submissions (57.8 MB)
public class Solution
{
    public void Rotate(int[] nums, int k)
    {
        k %= nums.Length;   
        Array.Reverse(nums);
        Array.Reverse(nums, 0, k);
        Array.Reverse(nums, k, nums.Length - k);
    }
}
// @lc code=end

