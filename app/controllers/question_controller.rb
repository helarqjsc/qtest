class QuestionController < ApplicationController
	def show_all
		@questions = Question.all
	end
	
	def add
		Question.new(question_content: params[:question_content]).save
	end
end
