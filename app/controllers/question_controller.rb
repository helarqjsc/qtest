class QuestionController < ApplicationController
	def show_all
		@questions = Question.all
	end
	
	def show
		@question = Question.find(params[:id])
	end
	
	def add
		Question.new(question_content: params[:question_content]).save
	end
end
