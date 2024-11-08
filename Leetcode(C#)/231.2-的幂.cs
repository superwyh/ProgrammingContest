/*
 * @lc app=leetcode.cn id=231 lang=csharp
 *
 * [231] 2 的幂
 */

// @lc code=start
// 一个位运算知识，如果 n 是正整数并且 n & (n - 1) = 0，那么 n 就是 2 的幂
// 1108/1108 cases passed (28 ms)
// Your runtime beats 85.71 % of csharp submissions
// Your memory usage beats 28.16 % of csharp submissions (27.8 MB)
// public class Solution {
//     public bool IsPowerOfTwo(int n) {
//         return n > 0 && (n & (n - 1)) == 0;
//     }
// }

// 另外一种方法，如果 n 是正整数并且 n & (-n) = n，那么 n 就是 2 的幂
// 1108/1108 cases passed (28 ms)
// Your runtime beats 85.71 % of csharp submissions
// Your memory usage beats 44.9 % of csharp submissions (27.7 MB)
// public class Solution {
//     public bool IsPowerOfTwo(int n) {
//         return n > 0 && (n & -n) == n;
//     }
// }

// 下面是极限优化了一下代码，考虑了个特殊情况
// 1108/1108 cases passed (20 ms)
// Your runtime beats 100 % of csharp submissions
// Your memory usage beats 60 % of csharp submissions (27.7 MB)
public class Solution {
    public bool IsPowerOfTwo(int n) {

        if (n <= 0) return false;

        return n > 0 && (n & -n) == n;
    }
}

// @lc code=end

