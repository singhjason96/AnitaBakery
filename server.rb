require 'sinatra'
require_relative 'goods.rb'
load "send.rb"

get '/contact' do
  if params['email'] != nil
    Newsletter.welcome(params['email']).deliver_now
  end
  erb :contact

end

get '/' do
  puts ENV["EMAIL_USERNAME"]
  erb :home
end




get '/cookies' do
  @cookie1 = Cookie.new('Chocolate Chip', '$3', 'These Are Good')
  @cookie2 = Cookie.new('Peanut-Butter', '$3', 'These Are Alright')
  @cookie3= Cookie.new('Rainbow', '$3', 'Thanks for your money. SUCKA!!')
  erb :cookies

end

get '/brownies' do
  @brownie1 = Brownie.new('Chocolate', '$3', 'These Hit')
  @brownie2 = Brownie.new('Red', '$3', 'That RED THO')
  @brownie3 = Brownie.new('Peanut Butter', '$3', 'These are Devine')
  erb :brownies
end

get '/pies' do
  @pie1 = Pie.new('Sweet Potato', 'Priceless', 'Handcrafted by Noah')
  @pie2 = Pie.new('Apple', '$3', 'Honestly kind of trash')
  @pie3 = Pie.new('Boston Cream Pie', '$7', 'Straight from Boston')
  erb :pies
end
