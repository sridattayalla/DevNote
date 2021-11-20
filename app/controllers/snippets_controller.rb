class SnippetsController < ApplicationController

  def index
    @user_exist = user_signed_in?

  end

  def new
    @snippet = Snippet.new
  end

  def create
    puts "in create"
    @user = current_user
    @snippet = @user.snippets.create(snippet_params)
    redirect_to snippet_path(@snippet)
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def snippet_params
    params.require(:snippet).permit(:title, :desciption, :code)
  end

end
