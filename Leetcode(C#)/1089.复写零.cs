/*
 * @lc app=leetcode.cn id=1089 lang=csharp
 *
 * [1089] 复写零
 */

// @lc code=start
// 双指针
// 30/30 cases passed (120 ms)
// Your runtime beats 100 % of csharp submissions
// Your memory usage beats 68.42 % of csharp submissions (42.8 MB)
public class Solution
{
    public void DuplicateZeros(int[] arr)
    {
        int len = arr.Length;
        int count = 0;
        bool flag = true;
        for (int i = 0; i < len - count; i++)
        {
            if (arr[i] == 0 && i < len - count - 1) count++;
            else if (arr[i] == 0 && i == len - count - 1) flag = false;
        }
        int idx = len - 1 - count;
        int temp = idx;
        for (int i = len - 1; i >= 0; i--)
        {
            if (arr[idx] == 0 && count > 0 && (idx != temp || idx == temp && flag))
            {
                arr[i] = 0;
                arr[--i] = 0;
                count--;
            }
            else arr[i] = arr[idx];
            idx--;
        }
    }
}
// @lc code=end
