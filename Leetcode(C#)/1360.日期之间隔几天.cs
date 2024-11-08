/*
 * @lc app=leetcode.cn id=1360 lang=csharp
 *
 * [1360] 日期之间隔几天
 */

// @lc code=start
// 用C#内置来写就一行
// 105/105 cases passed (68 ms)
// Your runtime beats 50 % of csharp submissions
// Your memory usage beats 44.44 % of csharp submissions (37.5 MB)
// public class Solution {
//     public int DaysBetweenDates(string date1, string date2) {
//         return Math.Abs((DateTime.Parse(date2)-DateTime.Parse(date1)).Days);
//     }
// }
// 常规解法，看题解学到的Zeller公式
// 105/105 cases passed (60 ms)
// Your runtime beats 83.33 % of csharp submissions
// Your memory usage beats 83.33 % of csharp submissions (35.9 MB)
public class Solution
{
    public int toDay(String dateStr)
    {
        string[] temp = dateStr.Split("-");
        int year = int.Parse(temp[0]);
        int month = int.Parse(temp[1]);
        int day = int.Parse(temp[2]);

        if (month <= 2)
        {
            year--;
            month += 10;
        }
        else
            month -= 2;
        return 365 * year
            + year / 4
            - year / 100
            + year / 400
            + 30 * month
            + (3 * month - 1) / 5
            + day /*- 584418*/
        ;
    }

    public int DaysBetweenDates(String date1, String date2)
    {
        return Math.Abs(toDay(date1) - toDay(date2));
    }
}

// @lc code=end
