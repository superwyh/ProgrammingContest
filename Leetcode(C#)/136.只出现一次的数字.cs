/*
 * @lc app=leetcode.cn id=136 lang=csharp
 *
 * [136] 只出现一次的数字
 */

// @lc code=start
// 异或运算相同归零不同得1，这一串数不停做异或操作，最后的结果就是唯一的那个数
// 61/61 cases passed (80 ms)
// Your runtime beats 99.47 % of csharp submissions
// Your memory usage beats 72.04 % of csharp submissions (42.5 MB)
public class Solution {
    public int SingleNumber(int[] nums) {
        int s = 0;
    for (int i = 0; i < nums.Length; i++)
    {
        s ^= nums[i];
    }
    return s;
    }
}
// @lc code=end

