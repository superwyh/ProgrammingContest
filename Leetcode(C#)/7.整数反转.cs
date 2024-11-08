/*
 * @lc app=leetcode.cn id=7 lang=csharp
 *
 * [7] 整数反转
 */

// @lc code=start
// 翻转字符串，虽然能用，但是效率极低。
// 1032/1032 cases passed (36 ms)
// Your runtime beats 8.95 % of csharp submissions
// Your memory usage beats 15.08 % of csharp submissions (27 MB)
// public class Solution
// {
//     public int Reverse(int x)
//     {
//         if (x < 0)
//         {
//             int.TryParse(new string((-x).ToString().Reverse().ToArray()), out x);
//             return -x;
//         }
//         else
//         {
//             int.TryParse(new string(x.ToString().Reverse().ToArray()), out x);
//             return x;
//         }
//     }
// }

// 一位一位的取，然后组成一个新的数
// 1032/1032 cases passed (24 ms)
// Your runtime beats 64.46 % of csharp submissions
// Your memory usage beats 96.69 % of csharp submissions (25.8 MB)
public class Solution
{
    public int Reverse(int x)
    {


        long n = 0;

        while (x != 0)
        {
            int t = x % 10;
            n = n * 10 + t;
            x = x / 10;

            if (n > int.MaxValue || n < int.MinValue)
            {
                n = 0;
                break;
            }

        }


        return (int)n;
    }
}



// @lc code=end

