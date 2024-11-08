/*
 * @lc app=leetcode.cn id=326 lang=csharp
 *
 * [326] 3 的幂
 */

// @lc code=start
// 直接用Math.Pow，效率极低
// 21040/21040 cases passed (72 ms)
// Your runtime beats 6.36 % of csharp submissions
// Your memory usage beats 5.2 % of csharp submissions (29.9 MB)
// public class Solution
// {
//     public bool IsPowerOfThree(int n)
//     {
//         if (n == 1) return true;
//         for (int i = 1; i < 20; i++) if (Math.Pow(3, i) == n) return true;
//         return false;
//     }
// }
// 一直取3的余数
// 21040/21040 cases passed (40 ms)
// Your runtime beats 87.28 % of csharp submissions
// Your memory usage beats 40.46 % of csharp submissions (29.5 MB)
public class Solution {
    public bool IsPowerOfThree(int n) {
        if(n == 0) return false;
        if(n == 1) return true;
        int s;
        while(n > 3)
        {
            if(n % 3 != 0)
            return false;
            n = n / 3;
        }
        return (n == 3) ? true : false;
    }
}

// @lc code=end

