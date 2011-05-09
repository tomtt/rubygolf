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
  
  def self.hole4(a)
    a.map do |e| e =~ /(.*)\((.*)\)/
      if $1 == "man"
        "hat(#{e})"
      elsif $1 == "dog"
        e.sub(')', '(bone))')
      else
        "dead(#{$2})"
      end
    end
  end
  
  def self.hole5(a)
    s1(a) + ss(a, 2) + ss(a, 3) + ss(a, 4)
  end
  
  def self.s1(a)
    a.map { |e| [e] }
  end

  def self.ss(a, n)
    r = []
    (5 - n).times { |i| r << a[i,n] }
    r
  end

  def self.hole6(n)
    r = []
    n.times { |i| r << i + 1 }
    r.map do |e|
      if e % 15 == 0
        "fizzbuzz"
      elsif e % 5 == 0
        "buzz"
      elsif e % 3 == 0
        "fizz"
      else
        e
      end
    end
  end

end
