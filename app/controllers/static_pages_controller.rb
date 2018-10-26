class StaticPagesController < ApplicationController
	def home
    @quotes = Quote.all.group_by(&:author)
	end
end