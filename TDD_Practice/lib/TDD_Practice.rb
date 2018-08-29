class Array
  def my_uniq
    res_arr = []
    self.each do |num|
      res_arr << num unless res_arr.include?(num)
    end
    
    res_arr
  end
  
  def two_sum
    res_arr = []
    
    (0...length - 1).to_a.each do |i|
      (i + 1...length).to_a.each do |j|
        res_arr << [i,j] if self[i] == -self[j]
      end 
    end 
    
    res_arr
  end 
  
  def my_transpose
    res_arr = Array.new(self.length) { []}
    
    self.each_with_index do |arr, idx1|
      arr.each_with_index do |el, idx2|
        res_arr[idx2] << el
      end
    end
    
    res_arr
  end
end