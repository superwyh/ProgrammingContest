/*
 * @lc app=leetcode.cn id=1111 lang=csharp
 *
 * [1111] 有效括号的嵌套深度
 */

// @lc code=start
//当(时，入栈，深度+1；当是)时，深度不变，出栈
// 31/31 cases passed (136 ms)
// Your runtime beats 50 % of csharp submissions
// Your memory usage beats 100 % of csharp submissions (42.3 MB)
public class Solution
{
    public int[] MaxDepthAfterSplit(string seq)
    {
        int l=seq.Length;
        int[] r = new int[l];
        int n = -1;

        for (int i = 0; i < l; i++)
        {
            if (seq[i] == '(')
            {
                n++;
                r[i] = n % 2;
            }
            else
            {
                r[i] = n % 2;
                n--;
            }
        }

        return r;
    }
}
// @lc code=end
