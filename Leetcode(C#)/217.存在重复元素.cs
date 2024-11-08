/*
 * @lc app=leetcode.cn id=217 lang=csharp
 *
 * [217] 存在重复元素
 */

// @lc code=start
// 哈希
// 70/70 cases passed (156 ms)
// Your runtime beats 82.54 % of csharp submissions
// Your memory usage beats 69.97 % of csharp submissions (51.1 MB)
public class Solution {
    public bool ContainsDuplicate(int[] nums) {
        Dictionary<int, int> d = new Dictionary<int, int>();
        for(int i=0;i<nums.Length;i++){
            d[nums[i]]=1;
        }
        return !(nums.Length==d.Count);
    }
}
// @lc code=end

