class Solution(object):
    def containsNearbyDuplicate(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: bool
        """
        window = set()
        for i, num in enumerate(nums):
            if i > k:
                window.remove(nums[i - k - 1])
            if num in window:
                return True
            window.add(num)
        return False