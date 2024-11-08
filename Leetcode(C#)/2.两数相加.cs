/*
 * @lc app=leetcode.cn id=2 lang=csharp
 *
 * [2] 两数相加
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
//  1568/1568 cases passed (88 ms)
// Your runtime beats 72.2 % of csharp submissions
// Your memory usage beats 27.28 % of csharp submissions (48.3 MB)
public class Solution {
    public ListNode AddTwoNumbers(ListNode l1, ListNode l2) {
        ListNode head = null, tail = null;
        int c = 0; 

        while(l1 != null || l2 != null)
        {
            int n1 = l1 != null ? l1.val : 0;
            int n2 = l2 != null ? l2.val : 0;
            int sum = n1 + n2 + c;
            if(head == null)
            {
                tail = new ListNode(sum % 10);
                head = tail;
            }
            else
            {
                tail.next = new ListNode(sum % 10);
                tail = tail.next;
            }
            c = sum / 10;
            if(l1 != null) l1 = l1.next;
            if(l2 != null) l2 = l2.next;
            
        }
        if(c > 0) tail.next = new ListNode(c);
        return head;

    }
}
// @lc code=end

