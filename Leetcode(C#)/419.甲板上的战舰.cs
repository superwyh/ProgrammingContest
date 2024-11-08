/*
 * @lc app=leetcode.cn id=419 lang=csharp
 *
 * [419] 甲板上的战舰
 */

// @lc code=start
// 一开始打算直接遍历，但是不满足 O(1)额外空间这个条件，于是看了题解才想到可以枚举的
// 27/27 cases passed (84 ms)
// Your runtime beats 100 % of csharp submissions
// Your memory usage beats 9.38 % of csharp submissions (39.8 MB)
public class Solution {
    public int CountBattleships(char[][] board) {
        int n = 0;
        for (int i = 0; i < board.Length; ++i) {
            for (int j = 0; j < board[0].Length; ++j) {
                if (board[i][j] == 'X') {
                    if (i > 0 && board[i - 1][j] == 'X') {
                        continue;
                    }
                    if (j > 0 && board[i][j - 1] == 'X') {
                        continue;
                    }
                    n++;
                }
            }
        }
        return n;

    }
}
// @lc code=end

