require 'spec_helper'

describe NumbersController do
  describe 'GET new' do
    #As this action only shows its view, we don't have anything to test.
  end
  describe 'POST create' do
    it 'returns a page with the number in words' do
      n = Random.rand(100000000)
      post 'create', {:number => n}
      page.should have_content(n.in_words)
    end
    it 'redirects to new' do
      post 'create', {:number => 1234}
      response.should redirect_to root_path
    end
  end
end
