class Admin::OrderCategoriesController < Admin::AdminController
  # GET /order_categories
  # GET /order_categories.xml
  def index
    @order_categories = OrderCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @order_categories }
    end
  end

  # GET /order_categories/1
  # GET /order_categories/1.xml
  def show
    @order_category = OrderCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order_category }
    end
  end

  # GET /order_categories/new
  # GET /order_categories/new.xml
  def new
    @order_category = OrderCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order_category }
    end
  end

  # GET /order_categories/1/edit
  def edit
    @order_category = OrderCategory.find(params[:id])
  end

  # POST /order_categories
  # POST /order_categories.xml
  def create
    @order_category = OrderCategory.new(params[:order_category])

    respond_to do |format|
      if @order_category.save
        format.html { redirect_to([:admin, @order_category], :notice => 'OrderCategory criada com sucesso.') }
        format.xml  { render :xml => @order_category, :status => :created, :location => @order_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @order_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /order_categories/1
  # PUT /order_categories/1.xml
  def update
    @order_category = OrderCategory.find(params[:id])

    respond_to do |format|
      if @order_category.update_attributes(params[:order_category])
        format.html { redirect_to([:admin, @order_category], :notice => 'OrderCategory atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /order_categories/1
  # DELETE /order_categories/1.xml
  def destroy
    @order_category = OrderCategory.find(params[:id])
    @order_category.destroy

    respond_to do |format|
      format.html { redirect_to(order_categories_url) }
      format.xml  { head :ok }
    end
  end
end
