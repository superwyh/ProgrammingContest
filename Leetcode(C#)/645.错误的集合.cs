/*
 * @lc app=leetcode.cn id=645 lang=csharp
 *
 * [645] 错误的集合
 */

// @lc code=start
// 哈希
// 49/49 cases passed (168 ms)
// Your runtime beats 42 % of csharp submissions
// Your memory usage beats 17 % of csharp submissions (51.5 MB)
public class Solution {
    public int[] FindErrorNums(int[] nums) {
         int[] n = new int[2]; 
        Dictionary<int, int> d = new Dictionary<int, int>(); 
        foreach (int num in nums)
        {
            if (!d.ContainsKey(num)) d.Add(num, 1);
            else d[num]++; 
        }

        for (int i = 1; i <= nums.Length; i++)
        {
            d.TryGetValue(i, out int count);
            if (count == 2) n[0] = i; 
            else if (count == 0) n[1] = i; 
        }
        return n; 

    }
}
// @lc code=end

