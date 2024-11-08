/*
 * @lc app=leetcode.cn id=999 lang=csharp
 *
 * [999] 可以被一步捕获的棋子数
 */

// @lc code=start
// 直接模拟
// 24/24 cases passed (80 ms)
// Your runtime beats 57.14 % of csharp submissions
// Your memory usage beats 100 % of csharp submissions (37.1 MB)
public class Solution
{
    public int NumRookCaptures(char[][] board)
    {
        (int row, int col) = FindRook(board);

        int count = 0;
        for (int i = row - 1; i >= 0; i--)
        {
            if (board[i][col] == 'p')
            {
                count++;
                break;
            }
            else if (board[i][col] == 'B')
                break;
        }
        for (int i = row + 1; i < 8; i++)
        {
            if (board[i][col] == 'p')
            {
                count++;
                break;
            }
            else if (board[i][col] == 'B')
                break;
        }
        for (int i = col - 1; i >= 0; i--)
        {
            if (board[row][i] == 'p')
            {
                count++;
                break;
            }
            else if (board[row][i] == 'B')
                break;
        }
        for (int i = col + 1; i < 8; i++)
        {
            if (board[row][i] == 'p')
            {
                count++;
                break;
            }
            else if (board[row][i] == 'B')
                break;
        }

        return count;
    }

    private (int row, int col) FindRook(char[][] board)
    {
        for (int i = 0; i < 8; i++)
            for (int j = 0; j < 8; j++)
                if (board[i][j] == 'R')
                    return (i, j);
        return (-1, -1);
    }
}
// @lc code=end
