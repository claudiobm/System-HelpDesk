class Admin::ClientAddressesController < Admin::AdminController

  def index
    @client_addresses = ClientAddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @client_addresses }
    end
  end

  def show
    @client_address = ClientAddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client_address }
    end
  end

  def new
    @client_address = ClientAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client_address }
    end
  end

  def edit
    @client_address = ClientAddress.find(params[:id])
    @address = @client_address
    @client = @client_address.client
    
    respond_to do |format|
    	format.js
    	format.html
    end
  end

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

  def destroy
    @client_address = ClientAddress.find(params[:id])
    @client_address.destroy
    
    @id_address = "#address_#{params[:id]}"

    respond_to do |format|
      format.html { redirect_to(client_addresses_url) }
      format.js { render :inline => "jQuery('<%= @id_address %>').fadeOut()"}
      format.xml  { head :ok }
    end
  end
  
end
