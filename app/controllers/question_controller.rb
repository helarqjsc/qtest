class QuestionController < ApplicationController
	def show_all
		@questions = Question.all
	end
	
	def show
		@question = Question.find(params[:id])
	end
	
	def add
		q = Question.new(question_content: params[:content])
		q.save
		redirect_to({action: 'show', id: q.id})
	end
	
	def answer
		q = Question.find(params[:id])
		raise "already has answer" if q.has_answer		
		q.answer_content = params[:content]
		q.has_answer = true
		q.save
		redirect_to({action: 'show', id: q.id})
	end
end
