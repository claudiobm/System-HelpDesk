class Admin::ClientAddressesController < Admin::AdminController
  # GET /client_addresses
  # GET /client_addresses.xml
  def index
    @client_addresses = ClientAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @client_addresses }
    end
  end

  # GET /client_addresses/1
  # GET /client_addresses/1.xml
  def show
    @client_address = ClientAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client_address }
    end
  end

  # GET /client_addresses/new
  # GET /client_addresses/new.xml
  def new
    @client_address = ClientAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client_address }
    end
  end

  # GET /client_addresses/1/edit
  def edit
    @client_address = ClientAddress.find(params[:id])
  end

  # POST /client_addresses
  # POST /client_addresses.xml
  def create
    @client_address = ClientAddress.new(params[:client_address])

    respond_to do |format|
      if @client_address.save
        format.html { redirect_to(@client_address, :notice => 'ClientAddress was successfully created.') }
        format.xml  { render :xml => @client_address, :status => :created, :location => @client_address }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /client_addresses/1
  # PUT /client_addresses/1.xml
  def update
    @client_address = ClientAddress.find(params[:id])

    respond_to do |format|
      if @client_address.update_attributes(params[:client_address])
        format.html { redirect_to(@client_address, :notice => 'ClientAddress was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /client_addresses/1
  # DELETE /client_addresses/1.xml
  def destroy
    @client_address = ClientAddress.find(params[:id])
    @client_address.destroy

    respond_to do |format|
      format.html { redirect_to(client_addresses_url) }
      format.xml  { head :ok }
    end
  end
end
