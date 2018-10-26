class StaticPagesController < ApplicationController
	def home
    @quotes = Quote.all.group_by(&:author)
    @random_quote = Quote.order("RANDOM()").first
	end
end