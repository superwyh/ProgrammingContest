/*
 * @lc app=leetcode.cn id=1290 lang=csharp
 *
 * [1290] 二进制链表转整数
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int val=0, ListNode next=null) {
 *         this.val = val;
 *         this.next = next;
 *     }
 * }
 */
//  102/102 cases passed (80 ms)
// Your runtime beats 55.1 % of csharp submissions
// Your memory usage beats 42.86 % of csharp submissions (37.4 MB)
public class Solution
{
    public int GetDecimalValue(ListNode head)
    {
        int n = 0;
        while (head != null)
        {
            n <<= 1;
            n |= head.val;
            head = head.next;
        }
        return n;
    }
}
// @lc code=end
