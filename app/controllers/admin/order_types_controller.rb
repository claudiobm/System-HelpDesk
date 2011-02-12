class Admin::OrderTypesController < Admin::AdminController
  # GET /order_types
  # GET /order_types.xml
  def index
    @order_types = OrderType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @order_types }
    end
  end

  # GET /order_types/1
  # GET /order_types/1.xml
  def show
    @order_type = OrderType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order_type }
    end
  end

  # GET /order_types/new
  # GET /order_types/new.xml
  def new
    @order_type = OrderType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order_type }
    end
  end

  # GET /order_types/1/edit
  def edit
    @order_type = OrderType.find(params[:id])
  end

  # POST /order_types
  # POST /order_types.xml
  def create
    @order_type = OrderType.new(params[:order_type])

    respond_to do |format|
      if @order_type.save
        format.html { redirect_to(@order_type, :notice => 'OrderType was successfully created.') }
        format.xml  { render :xml => @order_type, :status => :created, :location => @order_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @order_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /order_types/1
  # PUT /order_types/1.xml
  def update
    @order_type = OrderType.find(params[:id])

    respond_to do |format|
      if @order_type.update_attributes(params[:order_type])
        format.html { redirect_to(@order_type, :notice => 'OrderType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /order_types/1
  # DELETE /order_types/1.xml
  def destroy
    @order_type = OrderType.find(params[:id])
    @order_type.destroy

    respond_to do |format|
      format.html { redirect_to(order_types_url) }
      format.xml  { head :ok }
    end
  end
end
