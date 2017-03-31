module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
  def self.compute(strand_1, strand_2)
    if strand_1.length != strand_2.length
      raise ArgumentError
    end
    count = 0
    s1_array = strand_1.chars
    s2_array = strand_2.chars
    s1_array.each_with_index do |chr, ind|
      if chr != s2_array[ind]
        count += 1
      end
    end
    count
  end
end 
