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
  @triangle = Triangle.new(params.fetch('side1'), params.fetch('side2'), params.fetch('side3'))
  erb(:output)
end