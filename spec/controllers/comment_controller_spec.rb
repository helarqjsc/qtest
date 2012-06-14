require 'spec_helper'

describe CommentController do
	render_views

	it 'should create comment in db on #add action' do
		question = FactoryGirl.create(:question)
		post 'add', {content: 'lorem ipsum dolor sit amet', q_id: question.id}
		Comment.all.should_not be_empty
	end
end