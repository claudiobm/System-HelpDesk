class Admin::TechnocalClientAddressesController < Admin::AdminController
  # GET /technocal_client_addresses
  # GET /technocal_client_addresses.xml
  def index
    @technocal_client_addresses = TechnocalClientAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @technocal_client_addresses }
    end
  end

  # GET /technocal_client_addresses/1
  # GET /technocal_client_addresses/1.xml
  def show
    @technocal_client_address = TechnocalClientAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @technocal_client_address }
    end
  end

  # GET /technocal_client_addresses/new
  # GET /technocal_client_addresses/new.xml
  def new
    @technocal_client_address = TechnocalClientAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @technocal_client_address }
    end
  end

  # GET /technocal_client_addresses/1/edit
  def edit
    @technocal_client_address = TechnocalClientAddress.find(params[:id])
  end

  # POST /technocal_client_addresses
  # POST /technocal_client_addresses.xml
  def create
    @technocal_client_address = TechnocalClientAddress.new(params[:technocal_client_address])

    respond_to do |format|
      if @technocal_client_address.save
        format.html { redirect_to(@technocal_client_address, :notice => 'TechnocalClientAddress was successfully created.') }
        format.xml  { render :xml => @technocal_client_address, :status => :created, :location => @technocal_client_address }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @technocal_client_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /technocal_client_addresses/1
  # PUT /technocal_client_addresses/1.xml
  def update
    @technocal_client_address = TechnocalClientAddress.find(params[:id])

    respond_to do |format|
      if @technocal_client_address.update_attributes(params[:technocal_client_address])
        format.html { redirect_to(@technocal_client_address, :notice => 'TechnocalClientAddress was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @technocal_client_address.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /technocal_client_addresses/1
  # DELETE /technocal_client_addresses/1.xml
  def destroy
    @technocal_client_address = TechnocalClientAddress.find(params[:id])
    @technocal_client_address.destroy

    respond_to do |format|
      format.html { redirect_to(technocal_client_addresses_url) }
      format.xml  { head :ok }
    end
  end
end
