require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end
  get '/say/:number/:phrase' do
    array = []
    @number = params[:number]
    @phrase = params[:phrase]
    @number.to_i.times do 
    array << @phrase
    end
    array
  end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1]
    @number2 = params[:number2]
    "#{@number1.to_i + @number2.to_i}
    #{@number1.to_i - @number2.to_i}
    #{@number1.to_i * @number2.to_i}
    #{@number1.to_i / @number2.to_i}"
  end



end