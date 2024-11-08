/*
 * @lc app=leetcode.cn id=20 lang=csharp
 *
 * [20] 有效的括号
 */

// @lc code=start
// 直接用栈匹配
// 92/92 cases passed (104 ms)
// Your runtime beats 6.42 % of csharp submissions
// Your memory usage beats 66.19 % of csharp submissions (37.1 MB)
public class Solution
{
    public bool IsValid(string s)
    {
        Stack<char> stack = new Stack<char>();
        foreach (char c in s)
        {
            if (c == '(')
                stack.Push(')');
            else if (c == '[')
                stack.Push(']');
            else if (c == '{')
                stack.Push('}');
            else if (0 == stack.Count || stack.Pop() != c)
                return false;
        }
        return 0 == stack.Count;


    }
}
// @lc code=end

