// Extract the domain name from a URL
// Write a function that when given a URL as a string, parses out just the domain name and returns it as a string.
function domain_name(url) {
 return url.match(/(?:.*\/\/)?(?:www\.)?(.*?)(\..*|\/.*)/i)[1];
//  return (/(?:.*\/\/)?(?:www\.)?(.*?)(\..*|\/.*)/i).exec(url)[1];

}


let Test = require('./test_assert');
Test.assertSimilar(domain_name("http://google.com"), "google");
Test.assertSimilar(domain_name("http://google.co.jp"), "google");
Test.assertSimilar(domain_name("www.xakep.ru"), "xakep");
Test.assertSimilar(domain_name("https://youtube.com"), "youtube");
Test.assertSimilar(domain_name("https://hyphen-site.org"), "hyphen-site");
Test.assertSimilar(domain_name("http://github.com/carbonfive/raygun"),"github" );
Test.assertSimilar(domain_name("http://www.zombie-bites.com"),"zombie-bites");
Test.assertSimilar(domain_name("https://www.cnet.com"),"cnet");
Test.assertSimilar(domain_name("http://www.codewars.com/kata/"), "codewars");
Test.assertSimilar(domain_name("icann.org"), "icann");
console.log('----------------')