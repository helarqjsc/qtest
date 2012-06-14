require 'spec_helper'

describe QuestionController do
	it {respond_to :show_all}
	it {respond_to :add}
end
