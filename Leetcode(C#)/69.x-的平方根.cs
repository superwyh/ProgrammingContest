/*
 * @lc app=leetcode.cn id=69 lang=csharp
 *
 * [69] x 的平方根 
 */

// @lc code=start
// 暴力法，效率很低
// 1017/1017 cases passed (80 ms)
// Your runtime beats 5.16 % of csharp submissions
// Your memory usage beats 41.93 % of csharp submissions (26.1 MB)
// public class Solution {
//     public int MySqrt(int x) {
//         int i = 1;
//         while(i<x/i){
//             i = i + 1;
//         }

//         if(i>x/i){
//             i = i - 1;
//         }
//         return i;

//     }
// }
// 加了细节判断
// 1017/1017 cases passed (28 ms)
// Your runtime beats 35.27 % of csharp submissions
// Your memory usage beats 71.18 % of csharp submissions (26 MB)
// public class Solution {
//     public int MySqrt(int x) {
//         if (x < 2) return x;
//         long j = 1;
//         for (long i = 0; i <= x; i += j) {
//             if (i * i <= x && (i + 1) * (i + 1) > x) 
//                 return (int) i;
//             if (i * i < x) {
//                 j <<= 1;
//             } else {
//                 i -= j;
//                 j >>= 1;
//             }
//         }
//         return 0;

//     }
// }
// 二分法
// 看了题解知道了第1016个测试用例2147483647，所以最大的右指针就是46340
// 1017/1017 cases passed (20 ms)
// Your runtime beats 87.74 % of csharp submissions
// Your memory usage beats 83.01 % of csharp submissions (25.9 MB)
public class Solution
{
    public int MySqrt(int x)
    {

        int left = 0, right = 46340;
        int mid = (left + right) / 2;

        while (left < right)
        {
            if (mid * mid <= x && (mid + 1) > x / (mid + 1)) return mid;
            if (mid * mid > x) right = mid;
            else if ((mid + 1) <= x / (mid + 1)) left = mid + 1;
            mid = (left + right) / 2;
        }
        return mid;
    }
}
// @lc code=end

