/*
 * @lc app=leetcode.cn id=292 lang=csharp
 *
 * [292] Nim 游戏
 */

// @lc code=start
// 找规律遇到4就是你输了
// 60/60 cases passed (32 ms)
// Your runtime beats 53.33 % of csharp submissions
// Your memory usage beats 9.52 % of csharp submissions (27.7 MB)
// public class Solution
// {
//     public bool CanWinNim(int n)
//     {
//         return n % 4 == 0 ? false : true;
//     }
// }

// 上面的解法出乎意料的效率差，看了题解才发现可以做位运算
// 60/60 cases passed (28 ms)
// Your runtime beats 82.86 % of csharp submissions
// Your memory usage beats 59.05 % of csharp submissions (27.6 MB)
public class Solution
{
    public bool CanWinNim(int n)
    {
        // int t = n >> 2;
        // t = t << 2;
        // return n - t != 0;

        return n - ((n >> 2) << 2) != 0;
    }
}


// @lc code=end
