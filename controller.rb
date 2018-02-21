require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/string_check.rb')

get '/check/:s1/:s2' do
  inputs = String_check.new(params[:s1].to_s, params[:s2].to_s)
  @result = inputs.check_two_strings
  erb(:result)
end

get '/length/:s1/:s2' do
  inputs = String_check.new(params[:s1].to_s, params[:s2].to_s)
  @result = inputs.check_length
  erb(:result)
end

get '/palindrome/:s1' do
  string = String_check.new(params[:s1].to_s)
  @result = string.palindrome
  erb(:result)
end

get '/isogram/:s1' do
  string = String_check.new(params[:s1].to_s)
  @result = string.isogram
  erb(:result)
end

get '/anagram/:s1/:s2' do
  string = String_check.new(params[:s1].to_s, params[:s2])
  @result = string.anagram
  erb(:result)
end
