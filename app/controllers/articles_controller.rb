class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    #render plain: @articles.inject('') { |output, article| output + article.inspect + "\n"}
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @tags = Tag.all
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :body))
    @tag = Tag.find(params[:tags])
    @article.tags << @tag

    @tags = Tag.all
    @article.user = User.first

    if @article.save
      
      redirect_to article_path(@article.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

end