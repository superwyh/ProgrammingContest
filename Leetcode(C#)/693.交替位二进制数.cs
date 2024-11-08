/*
 * @lc app=leetcode.cn id=693 lang=csharp
 *
 * [693] 交替位二进制数
 */

// @lc code=start
// 204/204 cases passed (28 ms)
// Your runtime beats 82.86 % of csharp submissions
// Your memory usage beats 37.14 % of csharp submissions (27.7 MB)
// public class Solution
// {
//     public bool HasAlternatingBits(int n)
//     {
//         while (n > 2)
//         {
//             if (n % 2 == 0)
//             {
//                 n = n / 2;
//                 if (n % 2 == 0)
//                     return false;
//             }
//             else
//             {
//                 n = (n - 1) / 2;
//                 if (n % 2 != 0)
//                     return false;
//             }
//         }

//         return true;
//     }
// }

// 位运算版
// 204/204 cases passed (32 ms)
// Your runtime beats 57.14 % of csharp submissions
// Your memory usage beats 20 % of csharp submissions (27.8 MB)
// public class Solution
// {
//     public bool HasAlternatingBits(int n)
//     {
//         return ((n ^ (n >> 1)) & ((n ^ (n >> 1)) + 1)) == 0;
//     }
// }

// 直接打表，结果这个效率是最低的 …… 
// 204/204 cases passed (40 ms)
// Your runtime beats 11.43 % of csharp submissions
// Your memory usage beats 5.72 % of csharp submissions (28.6 MB)
public class Solution {
    public bool HasAlternatingBits(int n) {
        for (int i = 0; i < 31; i++)

        foreach (int k in new int[] { 1, 2, 5, 10, 21, 42, 85, 170, 341, 682, 1365, 2730, 5461, 10922, 21845, 43690, 87381, 174762, 349525, 699050, 1398101, 2796202, 5592405, 11184810, 22369621, 44739242, 89478485, 178956970, 357913941, 715827882, 1431655765 })
        {
            if (n == k)
                return true;
        }
        return false;
    }
}

// @lc code=end
