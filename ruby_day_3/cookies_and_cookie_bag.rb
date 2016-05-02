load "./cookie.rb"
load "./cookie_bag.rb"

cookie_1 = Cookie.new(5,6)
cookie_2 = Cookie.new(6,7)
cookie_3 = Cookie.new(10,15)

cookie_bag = CookieBag.new

cookie_bag.add_cookie(cookie_1)
puts cookie_bag.info
cookie_bag.add_cookie(cookie_2)
puts cookie_bag.info
cookie_bag.add_cookie(cookie_3)
puts cookie_bag.info


puts cookie_bag.take_cookie
puts cookie_bag.info
puts cookie_bag.take_cookie
puts cookie_bag.info
puts cookie_bag.take_cookie
puts cookie_bag.info
