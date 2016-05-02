class CookieBag

  def initialize
    @cookies = []
  end

  def add_cookie(c)
    @cookies.push(c)
  end

  def take_cookie
    @cookies.pop
  end

  def info
    puts "This cookie bag has #{@cookies.length} cookie(s)"
  end

end
