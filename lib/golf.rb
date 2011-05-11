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

  def self.hole7(a)
    a << 999
    r = []
    f = l = a.shift
    a.each do |e|
      if e - 1 == l
        l = e
      else
        if f == l
          r << f.to_s
        else
          r << "#{f}-#{l}"
        end
        f = l = e
      end
    end
    r
  end

  def self.hole8(n)
    a = [1, 1]
    (n - 2).times do
      a << (a[-2] + a[-1])
    end
    a
  end
end
