from sortedcontainers import SortedList

class Solution(object):
    def containsNearbyAlmostDuplicate(self, nums, k, t):
        """
        :type nums: List[int]
        :type k: int
        :type t: int
        :rtype: bool
        """
        window = SortedList()
        for i in range(len(nums)):
            if i > k:
                window.remove(nums[i - k - 1])
            pos = window.bisect_left(nums[i])
            if pos < len(window) and abs(window[pos] - nums[i]) <= t:
                return True
            if pos > 0 and abs(window[pos - 1] - nums[i]) <= t:
                return True
            window.add(nums[i])
        return False
