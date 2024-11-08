/*
 * @lc app=leetcode.cn id=26 lang=csharp
 *
 * [26] 删除有序数组中的重复项
 */

// @lc code=start
// 直接原地操作，只要比前一项大，就放进去
// 361/361 cases passed (140 ms)
// Your runtime beats 60.86 % of csharp submissions
// Your memory usage beats 15.41 % of csharp submissions (45.3 MB)
public class Solution {
    public int RemoveDuplicates(int[] nums) {
        if(nums.Length <= 1) return nums.Length;
        int k = 0;
        for(int i = 0; i < nums.Length - 1; i++) if(nums[i + 1] > nums[i]) nums[++k] = nums[i + 1];
        return (k + 1);
    }
}
// @lc code=end

