/*
 * @lc app=leetcode.cn id=925 lang=csharp
 *
 * [925] 长按键入
 */

// @lc code=start
// 双指针
// 94/94 cases passed (64 ms)
// Your runtime beats 81.36 % of csharp submissions
// Your memory usage beats 86.44 % of csharp submissions (37.1 MB)
public class Solution {
    public bool IsLongPressedName(string name, string typed) {

        if(name == typed) return true;

        int n = 0, t = 0, L1 = name.Length, L2 = typed.Length;

        while (n < L1 || t < L2)
        {
            if (n < L1 && t < L2 && name[n] == typed[t])
            {
                n++;
                t++;
                continue;
            }

            // 越界
            if (t == 0 || t == L2)
            {
                return false;
            }

            if (typed[t] != typed[t - 1])
            {
                return false;
            }

            t++;
        }

        return n == L1 && t == L2;
    }
}
// @lc code=end

