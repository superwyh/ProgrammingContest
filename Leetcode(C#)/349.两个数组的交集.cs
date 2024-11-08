/*
 * @lc app=leetcode.cn id=349 lang=csharp
 *
 * [349] 两个数组的交集
 */

// @lc code=start
// 使用C#的Intersect可以直接解决
// 55/55 cases passed (144 ms)
// Your runtime beats 21.69 % of csharp submissions
// Your memory usage beats 57.72 % of csharp submissions (42.2 MB)
// public class Solution {
//     public int[] Intersection(int[] nums1, int[] nums2) {
//         return nums1.Intersect(nums2).ToArray();
//     }
// }

// 正常写法，两次循环
// 55/55 cases passed (136 ms)
// Your runtime beats 56.25 % of csharp submissions
// Your memory usage beats 94.49 % of csharp submissions (41.9 MB)
public class Solution {
    public int[] Intersection(int[] nums1, int[] nums2) {
            List<int> n = new List<int>();
            for (int i = 0; i < nums1.Length; i++)
            {
                for (int j = 0; j < nums2.Length; j++)
                {
                    if (nums1[i] == nums2[j] && !n.Contains(nums1[i]))
                    {
                        n.Add(nums1[i]);
                        break;
                    }
                }
            }
            return n.ToArray();
    }
}

// @lc code=end

