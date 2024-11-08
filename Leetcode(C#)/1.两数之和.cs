/*
 * @lc app=leetcode.cn id=1 lang=csharp
 *
 * [1] 两数之和
 */

// @lc code=start
// 暴力法，效率最低
// public class Solution {
//     public int[] TwoSum(int[] nums, int target) {
//         for (int i = 0; i < nums.Length; i++)
//         {
//             for (int j = i+1; j < nums.Length; j++)
//             {
//                 if(nums[i]+nums[j] == target) return new int[]{ i , j };
//             }
//         }
//         return new int[] { 0, 0 };
//     }
// }

// 使用哈希表，原理就是查找target-num[i]是不是在哈希表里，如果在就直接return这一组，如果不在就把num[i]写入到哈希表，下一次遇到的时候就可以找到了
//57/57 cases passed (136 ms)
//Your runtime beats 95.92 % of csharp submissions
//Your memory usage beats 31.54 % of csharp submissions (43.6 MB)
public class Solution {
    public int[] TwoSum(int[] nums, int target) {
        Dictionary<int, int> s = new Dictionary<int, int>(); 
        for(int i = 0;i < nums.Length;i++)
        {
            int rest = target - nums[i];

            if(s.ContainsKey(rest)) // 如果表里有另外一个int的话
            {
                return new int[] {s[rest], i};
            }
            else
            {
                if(!s.ContainsKey(rest))
                {
                    s[nums[i]] = i;
                }
            }
        }
        return new int[] { 0 , 0 };
    }
}

// @lc code=end

