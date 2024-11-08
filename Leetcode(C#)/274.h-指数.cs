/*
 * @lc app=leetcode.cn id=274 lang=csharp
 *
 * [274] H 指数
 */

// @lc code=start
// 81/81 cases passed (76 ms)
// Your runtime beats 91.3 % of csharp submissions
// Your memory usage beats 76.09 % of csharp submissions (37.5 MB)
public class Solution
{
    public int HIndex(int[] citations)
    {
        int n = citations.Length;
        int k = n;
        int[] p = new int[n + 1];
        foreach (int c in citations) p[Math.Min(n, c)]++;     
        for (int s = p[n]; k > s; s += p[k]) k--;
        return k;
    }
}
// @lc code=end
