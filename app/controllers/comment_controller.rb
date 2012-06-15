class CommentController < ApplicationController
	def add
		q = Question.find(params[:id])
		raise "can't comment unanswered question" if not q.has_answer
		Comment.new(question_id: q.id, content: params[:content]).save
		redirect_to show_question_path(q)
	end
end
