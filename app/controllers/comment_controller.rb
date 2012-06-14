class CommentController < ApplicationController
	def add
		Comment.new(question_id: params[:q_id], content: params[:content]).save
	end
end
