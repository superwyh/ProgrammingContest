/*
 * @lc app=leetcode.cn id=12 lang=csharp
 *
 * [12] 整数转罗马数字
 */

// @lc code=start
// 直接打表。看起来蠢，但写的难度不大，而且效率高，内存占用低。
// 3999/3999 cases passed (76 ms)
// Your runtime beats 52.43 % of csharp submissions
// Your memory usage beats 83.5 % of csharp submissions (41.9 MB)
public class Solution
{
    public string IntToRoman(int num)
    {
        string r = "";
        while (num > 0)
        {
            if (num >= 1000)
            {
                r += 'M';
                num -= 1000;
            }
            else if (num >= 900)
            {
                r += 'C';
                num += 100;
            }
            else if (num >= 500)
            {
                r += 'D';
                num -= 500;
            }
            else if (num >= 400)
            {
                r += 'C';
                num += 100;
            }
            else if (num >= 100)
            {
                r += 'C';
                num -= 100;
            }
            else if (num >= 90)
            {
                r += 'X';
                num += 10;
            }
            else if (num >= 50)
            {
                r += 'L';
                num -= 50;
            }
            else if (num >= 40)
            {
                r += 'X';
                num += 10;
            }
            else if (num >= 10)
            {
                r += 'X';
                num -= 10;
            }
            else if (num >= 9)
            {
                r += 'I';
                num += 1;
            }
            else if (num >= 5)
            {
                r += 'V';
                num -= 5;
            }
            else if (num >= 4)
            {
                r += 'I';
                num += 1;
            }
            else if (num >= 1)
            {
                r += 'I';
                num -= 1;
            }
        }
        return r;
    }
}
// @lc code=end
