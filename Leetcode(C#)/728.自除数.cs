/*
 * @lc app=leetcode.cn id=728 lang=csharp
 *
 * [728] 自除数
 */

// @lc code=start
// 直接模拟
// 31/31 cases passed (80 ms)
// Your runtime beats 91.67 % of csharp submissions
// Your memory usage beats 63.89 % of csharp submissions (35.1 MB)
public class Solution {
    public IList<int> SelfDividingNumbers(int left, int right) {
        List<int> list = new List<int>();
        int x = 0, y = 0;
        for(int i = 0;i < right + 1 - left;i++)
        {
            x = left + i;
            y = left + i;
            while(true)
            {
                if(y % 10 == 0 || x % (y % 10) != 0)
                    break;
                y = y / 10;
                if(y < 1)
                {
                    list.Add(x);
                    break;
                }
            }
        }
        return list;

    }
}
// @lc code=end

