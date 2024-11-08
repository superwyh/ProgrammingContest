/*
 * @lc app=leetcode.cn id=371 lang=csharp
 *
 * [371] 两整数之和
 */

// @lc code=start
// 异或后与往左移一位就是求和
// 25/25 cases passed (16 ms)
// Your runtime beats 96.15 % of csharp submissions
// Your memory usage beats 51.92 % of csharp submissions (26 MB)
public class Solution {
    public int GetSum(int a, int b) {
        return b == 0 ? a : GetSum(a ^ b, (a & b) << 1);
    }
}
// @lc code=end

