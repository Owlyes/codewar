# Extract the domain name from a URL
# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string.
def domain_name(url)
 url.gsub(/(?:.*\/\/)?(?:www\.)?(.*?)(\..*|\/.*)/i, '\1' )


# # other solution:
#  url.match(/(?:https?:\/\/)?(?:www\.)?([A-z\d\-]+)/i)[1].to_s
#  url.match(/(?:https?:\/\/)?(?:www\.)?([A-z\d\-]+)(.*)/i)[2].to_s
end

require './test_assert'
Test.assert_equals(domain_name("http://google.com"), "google")
Test.assert_equals(domain_name("http://google.co.jp"), "google")
Test.assert_equals(domain_name("www.xakep.ru"), "xakep")
Test.assert_equals(domain_name("https://youtube.com"), "youtube")
Test.assert_equals(domain_name("https://hyphen-site.org"), "hyphen-site")
Test.assert_equals(domain_name("http://github.com/carbonfive/raygun"),"github" )
Test.assert_equals(domain_name("http://www.zombie-bites.com"),"zombie-bites")
Test.assert_equals(domain_name("https://www.cnet.com"),"cnet")
Test.assert_equals(domain_name("http://www.codewars.com/kata/"), "codewars")
Test.assert_equals(domain_name("icann.org"), "icann")
puts "--------------"