class Solution(object):
    def isBalanced(self, num):
        """
        :type num: str
        :rtype: bool
        """
        even_sum = 0
        odd_sum = 0
        for idx, digit in enumerate(num):
            if idx % 2 == 0:
                even_sum += int(digit)
            else:
                odd_sum += int(digit)
        return even_sum == odd_sum
