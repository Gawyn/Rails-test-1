require 'spec_helper'

describe NumbersController do
  describe 'new' do
    #As this action only shows its view, we don't have anything to test.
  end
  describe 'create' do
    it 'returns a page with the number in words' do
      n = Random.rand(100000000)
      get 'create', {:number => n}
      assigns[:number].should == n.in_words
    end
    it 'redirects to new' do
      get 'create', {:number => 1234}
      response.should render_template 'new'
    end
  end
end
