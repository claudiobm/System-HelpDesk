class AccountDepartmentsController < ApplicationController
  # GET /account_departments
  # GET /account_departments.xml
  def index
    @account_departments = AccountDepartment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @account_departments }
    end
  end

  # GET /account_departments/1
  # GET /account_departments/1.xml
  def show
    @account_department = AccountDepartment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @account_department }
    end
  end

  # GET /account_departments/new
  # GET /account_departments/new.xml
  def new
    @account_department = AccountDepartment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @account_department }
    end
  end

  # GET /account_departments/1/edit
  def edit
    @account_department = AccountDepartment.find(params[:id])
  end

  # POST /account_departments
  # POST /account_departments.xml
  def create
    @account_department = AccountDepartment.new(params[:account_department])

    respond_to do |format|
      if @account_department.save
        format.html { redirect_to(@account_department, :notice => 'AccountDepartment was successfully created.') }
        format.xml  { render :xml => @account_department, :status => :created, :location => @account_department }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @account_department.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /account_departments/1
  # PUT /account_departments/1.xml
  def update
    @account_department = AccountDepartment.find(params[:id])

    respond_to do |format|
      if @account_department.update_attributes(params[:account_department])
        format.html { redirect_to(@account_department, :notice => 'AccountDepartment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @account_department.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /account_departments/1
  # DELETE /account_departments/1.xml
  def destroy
    @account_department = AccountDepartment.find(params[:id])
    @account_department.destroy

    respond_to do |format|
      format.html { redirect_to(account_departments_url) }
      format.xml  { head :ok }
    end
  end
end
