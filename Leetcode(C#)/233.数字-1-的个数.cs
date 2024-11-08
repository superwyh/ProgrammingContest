/*
 * @lc app=leetcode.cn id=233 lang=csharp
 *
 * [233] 数字 1 的个数
 */

// @lc code=start
// 一开始写了个枚举，结果直接爆掉，然后在题解里看到这个神解法
// 38/38 cases passed (12 ms)
// Your runtime beats 100 % of csharp submissions
// Your memory usage beats 94.74 % of csharp submissions (25.7 MB)
public class Solution {
    public int CountDigitOne(int n) {
        int r = 0;

        for (int i = 1000000000, j = i - (i / 10); i >= 100; i /= 10, j = (j - i) / 10)
        {
            if (n >= i * 2)
            {
                r += i + (n / i * j);
                n %= i;
            }
            else if (n >= i)
            {
                n -= i;
                r += j + 1 + n;
            }
        }

        r += n <= 0 ? 0 :
            n <= 9 ? 1 :
            n <= 10 ? 2 :
            n <= 11 ? 4 :
            n <= 19 ? n - 7 :
            12 + (n - 11) / 10;

        return r;

    }
}
// @lc code=end

