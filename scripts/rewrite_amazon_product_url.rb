# frozen_string_literal: true

require 'pathname'

Pathname.glob('articles/**/*.md') do |pathname|
  content = pathname.read
  content.gsub!('http://www.amazon.co.jp', 'https://www.amazon.co.jp')
  content.gsub!(%r{/?\?tag=r7kamura07-22}, '')
  content.gsub!(%r{https://www\.amazon\.co\.jp/exec/obidos/ASIN/(\w+)/r7kamura07-22/?}, 'https://www.amazon.co.jp/dp/\1')
  content.gsub!(%r{https://www\.amazon\.co\.jp/gp/product/(\w+)}, 'https://www.amazon.co.jp/dp/\1')
  pathname.write(content)
end
