/*
 * @lc app=leetcode.cn id=1365 lang=csharp
 *
 * [1365] 有多少小于当前数字的数字
 */

// @lc code=start
// 直接双循环
// 103/103 cases passed (132 ms)
// Your runtime beats 92.5 % of csharp submissions
// Your memory usage beats 72.5 % of csharp submissions (42.6 MB)
public class Solution
{
    public int[] SmallerNumbersThanCurrent(int[] nums)
    {
        int[] r = new int[nums.Length];
        for (int i = 0; i < nums.Length; i++)
        {
            int n = 0;
            for (int j = 0; j < nums.Length; j++)
                if (nums[i] > nums[j])
                    n++;
            r[i] = n;
        }
        return r;
    }
}
// @lc code=end
