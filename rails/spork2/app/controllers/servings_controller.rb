#encoding: ascii-8bit
class ServingsController < ApplicationController
  # GET /servings
  # GET /servings.json
  def index
	  q = 'name LIKE '
	  q2 = ' AND name LIKE '
	  keywords = params[:servsearch].to_s.split
	  if keywords.size > 0
	  		q = 'name LIKE ' + "'%#{keywords[0]}%'"
	  		keywords[1, keywords.size-1].each do |keyword|
	  			q = q + q2 + "'%#{keyword}%'"
			end
			@servings = Serving.all(:conditions => q)
	  else
	  		@servings = Serving.all
	  end
#	  p = '"%' + params[:servsearch].gsub(' ', '%", "%') + '%"'
#	  meth = Serving.method('where("' + q3 + '", ' + p + ')')
#	  @servings = meth.call
	  #@servings = Serving.where(q3, "%#{params[:servsearch]}%")	  
#	 	showedServings = showedServings.where("name LIKE ?", keyword)
#	 end
#	 @servings = showedServings

#	 @servings = Serving.where("name LIKE ?", "%#{params[:servsearch]}%")
    #@servings = Serving.name_like_all(params[:servsearch].to_s.split.ascend_by_name
#	 @search = Serving.search(:name_contains => params[:servsearch])
#	 @servings = @search.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servings }
    end
  end

#  def preview
#  	 #@serving = Serving.find(params[:id])
#	 render :partial => 'preview', :content_type => 'text/html'
#  end
  # GET /servings/1
  # GET /servings/1.json
  def show
    @serving = Serving.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @serving }
    end
  end

  # GET /servings/new
  # GET /servings/new.json
  def new
    @serving = Serving.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @serving }
    end
  end

  # GET /servings/1/edit
  def edit
    @serving = Serving.find(params[:id])
  end

  # POST /servings
  # POST /servings.json
  def create
    @serving = Serving.new(params[:serving])

    respond_to do |format|
      if @serving.save
        format.html { redirect_to @serving, notice: 'Serving was successfully created.' }
        format.json { render json: @serving, status: :created, location: @serving }
      else
        format.html { render action: "new" }
        format.json { render json: @serving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /servings/1
  # PUT /servings/1.json
  def update
    @serving = Serving.find(params[:id])

    respond_to do |format|
      if @serving.update_attributes(params[:serving])
        format.html { redirect_to @serving, notice: 'Serving was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @serving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servings/1
  # DELETE /servings/1.json
  def destroy
    @serving = Serving.find(params[:id])
    @serving.destroy

    respond_to do |format|
      format.html { redirect_to servings_url }
      format.json { head :no_content }
    end
  end
end
