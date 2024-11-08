/*
 * @lc app=leetcode.cn id=4 lang=csharp
 *
 * [4] 寻找两个正序数组的中位数
 */

// @lc code=start
// 合并起来排序然后找中间点，有点过度使用语言特性了，效率也比较低。
// 2094/2094 cases passed (104 ms)
// Your runtime beats 39.44 % of csharp submissions
// Your memory usage beats 33.19 % of csharp submissions (51.2 MB)
public class Solution
{
    public double FindMedianSortedArrays(int[] nums1, int[] nums2)
    {
        List<int> n = new List<int>();
        n.AddRange(nums1);
        n.AddRange(nums2);
        n.Sort();
        if (n.Count % 2 == 0) return (n[n.Count / 2 - 1] + n[n.Count / 2]) / 2.0f;
        else return n[(n.Count - 1) / 2];
    }
}


// @lc code=end

