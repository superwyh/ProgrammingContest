/*
 * @lc app=leetcode.cn id=717 lang=csharp
 *
 * [717] 1 比特与 2 比特字符
 */

// @lc code=start
// 倒序遍历一遍
// 93/93 cases passed (92 ms)
// Your runtime beats 45.45 % of csharp submissions
// Your memory usage beats 50 % of csharp submissions (39.8 MB)
public class Solution
{
    public bool IsOneBitCharacter(int[] bits)
    {
        int i = 0;
        while (i < bits.Length - 1)
        {
            if (bits[i] == 1) i = i + 2;
            else i++;
        }
        return i == bits.Length - 1;
    }
}
// @lc code=end
