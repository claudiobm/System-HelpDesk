class Admin::TechnicalsEquipmentsController < Admin::AdminController
  # GET /technicals_equipments
  # GET /technicals_equipments.xml
  def index
    @technicals_equipments = TechnicalsEquipment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @technicals_equipments }
    end
  end

  # GET /technicals_equipments/1
  # GET /technicals_equipments/1.xml
  def show
    @technicals_equipment = TechnicalsEquipment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @technicals_equipment }
    end
  end

  # GET /technicals_equipments/new
  # GET /technicals_equipments/new.xml
  def new
    @technicals_equipment = TechnicalsEquipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @technicals_equipment }
    end
  end

  # GET /technicals_equipments/1/edit
  def edit
    @technicals_equipment = TechnicalsEquipment.find(params[:id])
  end

  # POST /technicals_equipments
  # POST /technicals_equipments.xml
  def create
    @technicals_equipment = TechnicalsEquipment.new(params[:technicals_equipment])

    respond_to do |format|
      if @technicals_equipment.save
        format.html { redirect_to([:admin, @technicals_equipment], :notice => 'TechnicalsEquipment criada com sucesso.') }
        format.xml  { render :xml => @technicals_equipment, :status => :created, :location => @technicals_equipment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @technicals_equipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /technicals_equipments/1
  # PUT /technicals_equipments/1.xml
  def update
    @technicals_equipment = TechnicalsEquipment.find(params[:id])

    respond_to do |format|
      if @technicals_equipment.update_attributes(params[:technicals_equipment])
        format.html { redirect_to([:admin, @technicals_equipment], :notice => 'TechnicalsEquipment atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @technicals_equipment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /technicals_equipments/1
  # DELETE /technicals_equipments/1.xml
  def destroy
    @technicals_equipment = TechnicalsEquipment.find(params[:id])
    id = @technicals_equipment.id
    @technicals_equipment.destroy

    respond_to do |format|
      format.html { redirect_to(technicals_equipments_url) }
      format.js {
      	render :inline => "jQuery('#technical_#{id}').hide()";
      }
      format.xml  { head :ok }
    end
  end
end
