require 'rails_helper'

describe QuotesController do
  before :each do
    @quote = Quote.create(:quote => 'test 1', :author => 'John Smith')
  end

  it "should hit the index" do
    get :index
    expect(response).to be_success
    expect(response.code).to eq('200')
    expect(assigns(:quotes)).to include(@quote)
  end

  it "should create the new quote" do
    post :create, :params => {:quote => {:quote => 'test 2', :author => 'jane doe', :date => '2018-01-01'}}
    newly_created_quote = Quote.find_by_quote('test 2')
    expect(newly_created_quote).to_not be_blank
    expect(newly_created_quote.author).to eq('jane doe')
    expect(newly_created_quote.date).to eq(Date.parse('2018-01-01'))
  end
end