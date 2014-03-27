require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
    # If the array is empty return a result
    # Otherwise call your helper _bsearch method
    end_index = array.length - 1
    if array.empty?
      return false
    else
      self._bsearch(array, element, 0, end_index)
    end
  end

  def self._bsearch(array, element, start_index, end_index)
    # If the start and end indeces are the same, search
    # that element and return
    #
    # Otherwise, find the midpoint
    #   midpoint = start_index + (end_index - start_index) / 2
    #
    # If the element is greater than the one at midpoint, call
    #   _bsearch on the right half of the remaining array
    # Otherwise, call _bsearch on left half of the remaining array
    if start_index == end_index
      if array[start_index] == element
        return true
      else
        return false
      end
    else
      midpoint = (start_index + (end_index - start_index) / 2)
      if array[midpoint] == element
        return true
      elsif element > array[midpoint]
        self._bsearch(array, element, midpoint + 1, end_index)
      else
        self._bsearch(array, element, start_index, midpoint)
      end
    end
  end
end
