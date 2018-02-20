require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/string_check.rb')

get '/check/:s1/:s2' do
  inputs = String_check.new(params[:s1].to_s, params[:s2].to_s)
  return inputs.check_two_strings
end

get '/length/:s1/:s2' do
  inputs = String_check.new(params[:s1].to_s, params[:s2].to_s)
  return inputs.check_length
end

get '/palindrome/:s1' do
  string = String_check.new(params[:s1].to_s)
  return string.palindrome
end

get '/isogram/:s1' do
  string = String_check.new(params[:s1].to_s)
  return string.isogram
end

get '/anagram/:s1/:s2' do
  string = String_check.new(params[:s1].to_s, params[:s2])
  return string.anagram
end
