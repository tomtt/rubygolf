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
end
