require 'spec_helper'

describe CommentController do
	render_views
	
	it 'should create comment in db on #add action' do
		post 'add', {content: 'lorem ipsum dolor sit amet'}
		Post.all.should_not be_empty
	end
end
