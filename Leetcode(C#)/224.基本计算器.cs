/*
 * @lc app=leetcode.cn id=224 lang=csharp
 *
 * [224] 基本计算器
 */

// @lc code=start
// 用stack来管理
public class Solution {
    public int Calculate(string s) {
        Stack<int> stack = new Stack<int>();
        int sign = 1;
        int ret = 0;
        int n = s.Length;
        int i = 0;
        while(i < n){
            char c = s[i];
            if(c == ' '){
                i++;
            }else if(c == '+'){
                sign = 1;
                i++;
            }else if(c == '-'){
                sign = -1;
                i++;
            }else if(c == '('){
                stack.Push(ret);
                stack.Push(sign);
                ret = 0;
                sign = 1;
                i++;
            }else if(c == ')'){
                ret = ret * stack.Pop() + stack.Pop();
                i++;
            }else{
                long num = 0;
                while(i < n && Char.IsDigit(s[i])){
                    num = num * 10 + s[i] - '0';
                    i++;
                }
                ret += sign * (int)num;
            }
        }
        return ret;

    }
}
// @lc code=end

