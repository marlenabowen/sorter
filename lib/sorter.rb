class Sorter
  def self.sort_ascending(array)
    sorted_array = []
    length = _length(array)
    while length > 0
      min = _minimum(array)
      index = _index(array, min)
      sorted_array.push(min)
      length = length - 1
      array.delete_at(index)
    end
    return sorted_array
  end

  def self.sort_descending(array)
    sorted_array = []
    length = _length(array)
    while length > 0
      max = _maximum(array)
      index = _index(array, max)
      sorted_array.push(max)
      length = length - 1
      array.delete_at(index)
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

  def self._length(array)
    length = 0
    array.each do |e|
      length = length + 1
    end
    length
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
    index
  end
end
