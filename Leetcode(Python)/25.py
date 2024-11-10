# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverseKGroup(self, head: Optional[ListNode], k: int) -> Optional[ListNode]:
        dummy = ListNode(0, head)
        pre, cur = dummy, head

        while True:
            group_tail = pre
            for _ in range(k):
                group_tail = group_tail.next
                if not group_tail:
                    return dummy.next
            
            next_group_head = group_tail.next
            prev, node = next_group_head, cur
            
            for _ in range(k):
                tmp = node.next
                node.next = prev
                prev = node
                node = tmp
            
            pre.next = prev
            pre = cur
            cur = next_group_head
