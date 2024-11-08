/*
 * @lc app=leetcode.cn id=66 lang=csharp
 *
 * [66] 加一
 */

// @lc code=start
// 记住逢十进一就好
// 111/111 cases passed (128 ms)
// Your runtime beats 76.84 % of csharp submissions
// Your memory usage beats 22.03 % of csharp submissions (41.5 MB)

public class Solution
{
    public int[] PlusOne(int[] digits)
    {

        int i = digits.Length - 1;
        int h = 0;

        digits[i] = digits[i] + 1;
        while (i >= 0)
        {
            if (digits[i] != 10)
            {
                return digits;
            }
            if (digits[i] == 10 && i == h)
            {
                digits = new int[digits.Length + 1];
                digits[h] = 1;
                return digits;
            }
            digits[i] = 0;
            digits[i - 1]++;
            i--;
        }
        return digits;


    }
}
// @lc code=end

