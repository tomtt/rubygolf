class Golf
  def self.hole1(a)
    a.inject(1) { |b,c| b * c }
  end
  
  def self.hole2(s)
    s.split.sort_by { |w| w[1] }.join ' '
  end
end
