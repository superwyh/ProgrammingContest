/*
 * @lc app=leetcode.cn id=941 lang=csharp
 *
 * [941] 有效的山脉数组
 */

// @lc code=start
// 直接遍历就可以
// 53/53 cases passed (108 ms)
// Your runtime beats 75 % of csharp submissions
// Your memory usage beats 66.67 % of csharp submissions (47.8 MB)
public class Solution
{
    public bool ValidMountainArray(int[] arr)
    {
        int l = arr.Length;
        int i = 0;
        while (i + 1 < l && arr[i] < arr[i + 1])
            i++;
        if (i == 0 || i == l - 1)
            return false;
        while (i + 1 < l && arr[i] > arr[i + 1])
            i++;
        if (i == l - 1)
            return true;
        else
            return false;

    }
}
// @lc code=end

