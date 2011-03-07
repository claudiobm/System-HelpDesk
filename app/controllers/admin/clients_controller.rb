class Admin::ClientsController < Admin::AdminController

  def index
    @clients = Client.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clients }
    end
  end

  def show
    @client = Client.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client }
    end
  end

  def new
    @client = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client }
    end
  end

  def edit
    @client = Client.find(params[:id])
    @technicals = Technical.all
  end
  
  def address_remote
  	@address = ClientAddress.new(params[:client_address])
  	
	  respond_to do |format|
	  	if @address.save
				format.js
			else
				format.js { render :inline => "alert('Erro ao cadastrar endereço tente novamente.'); 
																			 jQuery('#form_modal').dialog('close');" }
			end
		end
  end
  
  def address_remote_update
  	@address = ClientAddress.find(params[:id])
  	@address.update_attributes(params[:client_address])
  	
	  respond_to do |format|
			format.js
		end
  end

  def create
    @client = Client.new(params[:client])

    respond_to do |format|
      if @client.save
        format.html { redirect_to([:admin, @client], :notice => 'Client was successfully created.') }
        format.xml  { render :xml => @client, :status => :created, :location => @client }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @client = Client.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to([:admin, @client], :notice => 'Client atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to(clients_url) }
      format.xml  { head :ok }
    end
  end
end
