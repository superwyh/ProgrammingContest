/*
 * @lc app=leetcode.cn id=1005 lang=csharp
 *
 * [1005] K 次取反后最大化的数组和
 */

// @lc code=start
// 用C#的语言特性解答，效率极低
// Your runtime beats 10 % of csharp submissions
// Your memory usage beats 6.67 % of csharp submissions (38.7 MB)
// public class Solution {
//     public int LargestSumAfterKNegations(int[] nums, int k) {
//         while(k != 0){
//             nums[Array.IndexOf(nums, nums.Min())] = nums.Min() * -1;
//             k--;
//         }
//         return nums.Sum();

//     }
// }

// 贪心算法
// 81/81 cases passed (84 ms)
// Your runtime beats 60 % of csharp submissions
// Your memory usage beats 93.33 % of csharp submissions (37.8 MB)
public class Solution
{
    public int LargestSumAfterKNegations(int[] nums, int k)
    {
        int n = 0;
        Array.Sort(nums);
        int m = int.MaxValue;
        for (int i = 0; i < nums.Length; i++)
        {
            if (nums[i] < 0 && k > 0)
            {
                nums[i] *= -1;
                k--;
            }
            m = Math.Min(m, nums[i]);
            n += nums[i];
        }
        if (k > 0 && k % 2 == 1)
        {
            n -= m * 2;
        }
        return n;
    }
}

// @lc code=end

