/*
 * @lc app=leetcode.cn id=1504 lang=csharp
 *
 * [1504] 统计全 1 子矩形
 */

// @lc code=start
// 直接暴力算法
// 73/73 cases passed (104 ms)
// Your runtime beats 100 % of csharp submissions
// Your memory usage beats 100 % of csharp submissions (44.7 MB)
public class Solution
{
    public int NumSubmat(int[][] mat)
    {
        int N = mat.Length;
        int M = mat[0].Length;

        for (int i = 1; i < N; i++) for (int j = 0; j < M; j++) if (mat[i][j] != 0) mat[i][j] += mat[i - 1][j];

        int result = 0;
        for (int i = 0; i < N; i++)
            for (int j = 0; j < M; j++)
            {
                if (mat[i][j] == 0) continue;

                int min = mat[i][j];
                for (int k = j; k < M; k++)
                {
                    min = Math.Min(min, mat[i][k]);
                    if (min == 0) break;
                    result += min;
                }
            }
        return result;
    }
}
// @lc code=end
