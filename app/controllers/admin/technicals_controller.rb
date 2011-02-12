class Admin::TechnicalsController < Admin::AdminController
  # GET /technicals
  # GET /technicals.xml
  def index
    @technicals = Technical.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @technicals }
    end
  end

  # GET /technicals/1
  # GET /technicals/1.xml
  def show
    @technical = Technical.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @technical }
    end
  end

  # GET /technicals/new
  # GET /technicals/new.xml
  def new
    @technical = Technical.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @technical }
    end
  end

  # GET /technicals/1/edit
  def edit
    @technical = Technical.find(params[:id])
  end

  # POST /technicals
  # POST /technicals.xml
  def create
    @technical = Technical.new(params[:technical])

    respond_to do |format|
      if @technical.save
        format.html { redirect_to(@technical, :notice => 'Technical was successfully created.') }
        format.xml  { render :xml => @technical, :status => :created, :location => @technical }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @technical.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /technicals/1
  # PUT /technicals/1.xml
  def update
    @technical = Technical.find(params[:id])

    respond_to do |format|
      if @technical.update_attributes(params[:technical])
        format.html { redirect_to(@technical, :notice => 'Technical was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @technical.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /technicals/1
  # DELETE /technicals/1.xml
  def destroy
    @technical = Technical.find(params[:id])
    @technical.destroy

    respond_to do |format|
      format.html { redirect_to(technicals_url) }
      format.xml  { head :ok }
    end
  end
end
