/*
 * @lc app=leetcode.cn id=1291 lang=csharp
 *
 * [1291] 顺次数
 */

// @lc code=start
// 23/23 cases passed (96 ms)
// Your runtime beats 33.33 % of csharp submissions
// Your memory usage beats 66.67 % of csharp submissions (34.9 MB)
public class Solution
{
    public IList<int> SequentialDigits(int low, int high)
    {
        string sample = "123456789";
        int n = 10;
        List<int> results = new List<int>();

        int lowLen = low.ToString().Length;
        int highLen = high.ToString().Length;
        for (int length = lowLen; length < highLen + 1; length++)
            for (int start = 0; start < n - length; start++)
            {
                int num = int.Parse(sample.Substring(start, length));
                if (num >= low && num <= high)
                    results.Add(num);
            }
        return results;
    }
}
// @lc code=end
