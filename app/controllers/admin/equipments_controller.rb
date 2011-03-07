class Admin::EquipmentsController < Admin::AdminController
  # GET /equipment
  # GET /equipment.xml
  def index
    @equipment = Equipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @equipment }
    end
  end

  # GET /equipment/1
  # GET /equipment/1.xml
  def show
    @equipment = Equipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @equipment }
    end
  end

  # GET /equipment/new
  # GET /equipment/new.xml
  def new
    @equipment = Equipment.new
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @equipment }
    end
  end
  
  def technical_remote
	@technical = TechnicalsEquipment.create(params[:technicals_equipment]).technical

	respond_to do |format|
		format.js
	end
  end
  
  def technical_remote_update
  	@technical_equipment = TechnicalsEquipment.find(params[:id])
  	@technical_equipment.update_attributes(params[:technicals_equipment])
  	
  	@technical = @technical_equipment.technical
  	
	respond_to do |format|
		format.js
	end
  end

  # GET /equipment/1/edit
  def edit
    @equipment = Equipment.find(params[:id])
  end

  # POST /equipment
  # POST /equipment.xml
  def create
    @equipment = Equipment.new(params[:equipment])

    respond_to do |format|
      if @equipment.save
      	TechnicalsEquipment.create(params[:technical_attribute].merge({:equipment_id => @equipment.id}) )
        format.html { redirect_to([:admin, @equipment], :notice => 'Equipment criada com sucesso.') }
        format.xml  { render :xml => @equipment, :status => :created, :location => @equipment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @equipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /equipment/1
  # PUT /equipment/1.xml
  def update
    @equipment = Equipment.find(params[:id])

    respond_to do |format|
      if @equipment.update_attributes(params[:equipment])
        format.html { redirect_to([:admin, @equipment], :notice => 'Equipment atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @equipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/1
  # DELETE /equipment/1.xml
  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy

    respond_to do |format|
      format.html { redirect_to(:action => :index) }
      format.xml  { head :ok }
    end
  end
end
