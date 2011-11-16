class CommentsController < ApplicationController
before_filter do
    @fortune = Fortune.find(params[:fortune_id])
  end

  def create
    @comment = @fortune.comments.build(params[:comment])
    @comment.save
    #respond_with(@fortune, @comment, :location => @fortune)
	
	respond_to do |format|
      format.html { redirect_to action: 'index', controller: 'fortunes' }# index.html.erb
      format.json { render json: @comment }
    end
  
	
  end

  def destroy
    @comment = @fortune.comments.find(params[:id])
    @comment.destroy
    #respond_with(@fortune, @comment, :location => @fortune)
	
	respond_to do |format|
      format.html { redirect_to action: 'index', controller: 'fortunes' }# index.html.erb
      format.json { render json: @comment }
    end
  
  end

end
