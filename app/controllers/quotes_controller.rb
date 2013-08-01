class QuotesController < Rulers::Controller
  def index
    @quotes = FileModel.all
    render :index
  end
  
  def show
    @obj = FileModel.find(params["id"])
    @ua = request.user_agent
    render :quote
  end
  
  def update_quote
    if env["REQUEST_METHOD"] == "POST"
      @obj = FileModel.find(1)
      @obj["submitter"] = "Drew"
      @obj.save
      @ua = request.user_agent
      render :quote
    end
  end
  
  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth a thousand pixels.",
      "attribution" => "Me"
    }
    @obj = FileModel.create(attrs)
    @ua = request.user_agent
    render :quote
  end
  
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
  
  def quote_1
    @obj = FileModel.find(7)
    @ua = request.user_agent
    render :quote
  end
  
  def find_drew
    @quotes = FileModel.find_by_all_submitter("Drew")
    render :index
  end
end