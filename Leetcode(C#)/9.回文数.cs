/*
 * @lc app=leetcode.cn id=9 lang=csharp
 *
 * [9] 回文数
 */

// @lc code=start
// 直接翻转的方法，因为提示有说不用转化成字符串，所以直接没考虑
// 11510/11510 cases passed (36 ms)
// Your runtime beats 83.21 % of csharp submissions
// Your memory usage beats 87.35 % of csharp submissions (28.7 MB)
public class Solution {
    public bool IsPalindrome(int x) {
        if( x<0 || (x % 10 == 0 && x !=0)) return false; // 如果x小于0，或者0的最后一位是0，且x不是0，那么就肯定不是回文数
        if( x>0 && x < 10) return true;// 如果是个位数肯定是true

        int y = 0; // y是翻转用的临时变量

        while( y < x ){ // 当反转后的数大于原来数字时，说明已经过半了
            y = y * 10 + x % 10;
            x = x / 10;
        }

        return x == y || x == y / 10; // 如果是奇数位数的情况，要让y多除一次10,排除掉中间的那个数，并且中间的数字不影响是不是回文
    }
}

// 数学方法，我本来以为这个方法可能效率更高，结果估计是因为Math库速度慢，反而比上面的方法还要慢很多
// public class Solution {
//     public bool IsPalindrome(int x) {
//         if( x<0 || (x % 10 == 0 && x !=0)) return false; // 如果x小于0，或者0的最后一位是0，且x不是0，那么就肯定不是回文数
//         if( x>0 && x < 10) return true;// 如果是个位数肯定是true         
//         int y = (int)Math.Log10(x);

//         for (int z = 0; z <= y / 2; z++) 
//         {
//             if ((int)(x % Math.Pow(10, y - z + 1) / Math.Pow(10, y - z)) != (int)(x / Math.Pow(10, z) % 10)) return false;
//         }

//         return true;

//     }
// }
// @lc code=end

