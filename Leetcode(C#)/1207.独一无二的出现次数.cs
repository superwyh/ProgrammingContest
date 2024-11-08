/*
 * @lc app=leetcode.cn id=1207 lang=csharp
 *
 * [1207] 独一无二的出现次数
 */

// @lc code=start
// 直接放在字典里面比
// 64/64 cases passed (76 ms)
// Your runtime beats 100 % of csharp submissions
// Your memory usage beats 22.22 % of csharp submissions (39.5 MB)
public class Solution
{
    public bool UniqueOccurrences(int[] arr)
    {
        Dictionary<int, int> nums = new Dictionary<int, int>();
        foreach (var a in arr)
        {
            if (!nums.ContainsKey(a)) nums[a] = 1;
            else nums[a]++;
        }
        return nums.Keys.Count == nums.Values.Distinct().Count();

    }
}
// @lc code=end

