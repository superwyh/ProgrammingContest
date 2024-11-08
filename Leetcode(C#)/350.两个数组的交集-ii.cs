/*
 * @lc app=leetcode.cn id=350 lang=csharp
 *
 * [350] 两个数组的交集 II
 */

// @lc code=start
// 哈希
// 56/56 cases passed (136 ms)
// Your runtime beats 56.85 % of csharp submissions
// Your memory usage beats 17.96 % of csharp submissions (42.4 MB)
public class Solution {
    public int[] Intersect(int[] nums1, int[] nums2) {
        Dictionary<int, int> d = new Dictionary<int, int>();
        List<int> l = new List<int>();

        foreach(int i in nums1){
            if(d.ContainsKey(i))
                d[i]++;
            else d.Add(i, 1);
        }

        foreach(int j in nums2){
            if(d.ContainsKey(j) && d[j] > 0){
                l.Add(j);
                d[j]--;
            }
        }
        return l.ToArray();

    }
}
// @lc code=end

