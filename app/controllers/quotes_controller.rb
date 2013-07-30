class QuotesController < Rulers::Controller
  def a_quote
    @test = "success"
    render :a_quote, :noun => :winking
  end
  
  def another_quote
    "another quote indeed"
  end
  
  def exception
    raise "It's a bad one! "
  end
end