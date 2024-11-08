/*
 * @lc app=leetcode.cn id=397 lang=csharp
 *
 * [397] 整数替换
 */

// @lc code=start
// 直接递归
// 47/47 cases passed (24 ms)
// Your runtime beats 72 % of csharp submissions
// Your memory usage beats 60 % of csharp submissions (26 MB)
public class Solution {
    public int IntegerReplacement(int n) {
        if (n == 1) return 0;
        if (n % 2 == 0) return 1 + IntegerReplacement(n / 2);
        return 2 + Math.Min(IntegerReplacement(n / 2), IntegerReplacement(n / 2 + 1));

    }
}
// @lc code=end

