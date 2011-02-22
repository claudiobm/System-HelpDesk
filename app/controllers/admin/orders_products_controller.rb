class Admin::OrdersProductsController < Admin::AdminController
  # GET /orders_products
  # GET /orders_products.xml
  def index
    @orders_products = OrdersProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orders_products }
    end
  end

  # GET /orders_products/1
  # GET /orders_products/1.xml
  def show
    @orders_product = OrdersProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @orders_product }
    end
  end

  # GET /orders_products/new
  # GET /orders_products/new.xml
  def new
    @orders_product = OrdersProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @orders_product }
    end
  end

  # GET /orders_products/1/edit
  def edit
    @orders_product = OrdersProduct.find(params[:id])
  end

  # POST /orders_products
  # POST /orders_products.xml
  def create
    @orders_product = OrdersProduct.new(params[:orders_product])

    respond_to do |format|
      if @orders_product.save
        format.html { redirect_to([:admin, @orders_product], :notice => 'OrdersProduct criada com sucesso.') }
        format.xml  { render :xml => @orders_product, :status => :created, :location => @orders_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @orders_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orders_products/1
  # PUT /orders_products/1.xml
  def update
    @orders_product = OrdersProduct.find(params[:id])

    respond_to do |format|
      if @orders_product.update_attributes(params[:orders_product])
        format.html { redirect_to([:admin, @orders_product], :notice => 'OrdersProduct atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @orders_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orders_products/1
  # DELETE /orders_products/1.xml
  def destroy
    @orders_product = OrdersProduct.find(params[:id])
    @orders_product.destroy

    respond_to do |format|
      format.html { redirect_to(orders_products_url) }
      format.xml  { head :ok }
    end
  end
end
