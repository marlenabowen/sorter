class Sorter
  def self.sort_ascending(array)
    copy_array = []
    array.each do |e|
      copy_array.push(e)
    end
    
    sorted_array = []
    array.each do |e|
      min = _minimum(copy_array)
      index = _index(copy_array, min)
      sorted_array.push(min)
      copy_array.delete_at(index)
    end
    return sorted_array
  end

  def self.sort_descending(array)
    copy_array = []
    array.each do |e|
      copy_array.push(e)
    end

    sorted_array = []
    array.each do |e|
      max = _maximum(copy_array)
      index = _index(copy_array, max)
      sorted_array.push(max)
      copy_array.delete_at(index)
    end
    return sorted_array
  end

  private

  def self._minimum(array)
    b = array.first
    array.each do |e|
      if e < b
        b = e
      end
    end
    b
  end

  def self._maximum(array)
    b = array.first
    array.each do |e|
      if e > b
        b = e
      end
    end
    b
  end

  def self._index(array, value)
    index = 0
    array.each do |e|
      if e == value
        return index
      else
        index = index + 1
      end
    end
  end
end
