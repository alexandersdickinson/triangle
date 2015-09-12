require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  @header = 'Side Lengths'
  erb(:form)
end

get('/output') do
  @header = 'Your Triangle is:'
  @triangle = Triangle.new(params.fetch('side1').to_i(), params.fetch('side2').to_i(), params.fetch('side3').to_i())
  erb(:output)
end