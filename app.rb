require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
      name = params[:name]
      rev= name.reverse!
      "#{rev}"
    end

  get '/square/:number' do
    num= params[:number]
    numb= num.to_i
    answer = numb * numb
    "#{answer}"
  end

  get '/say/:number/:phrase' do
      num= params[:number].to_i
      phrase=params[:phrase]
      "#{phrase}\n" * num
      end



  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1=params[:word1]
    word2=params[:word2]
    word3=params[:word3]
    word4=params[:word4]
    word5=params[:word5]
    string= "#{word1} " + "#{word2} "  + "#{word3} " + "#{word4} " + "#{word5}"  +"."
    string
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
      if operation == "add"
        answer = num1 + num2
      elsif operation == "subtract"
        answer = num1 - num2
      elsif operation == "multiply"
          answer = num1 * num2
        elsif operation = "divide"
          answer = num1/num2
        else
          answer = "Not a valid operation"
        end
        answer.to_s
    end



end
