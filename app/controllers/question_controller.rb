class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @name = params[:name]
    @content = params[:content]
    
    Question.create(
      name:@name ,
      content:@content
    )
    
    check_name = params[:check_name]
     
    if check_name == 'anonymity'
      @anonymity = true
      @name = 'anonymity'
    end
    
    redirect_to :back
    
  end
end
