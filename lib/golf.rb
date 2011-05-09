class Golf
  def self.hole1(a)
    a.inject(1) { |b,c| b * c }
  end
  
  def self.hole2(s)
    s.split.sort_by { |w| w[1] }.join ' '
  end
  
  def self.hole3(n)
    if n > 0
      n * hole3(n - 1)
    else
      1
    end
  end
end
