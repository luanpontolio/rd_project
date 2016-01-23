class ContactTypesController < ApplicationController
  before_action :set_contact_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /contact_types
  # GET /contact_types.json
  def index
    @contact_types = current_user.contact_types.all
  end

  # GET /contact_types/1
  # GET /contact_types/1.json
  def show
  end

  # GET /contact_types/new
  def new
    @contact_type = current_user.contact_types.build
  end

  # GET /contact_types/1/edit
  def edit
  end

  # POST /contact_types
  # POST /contact_types.json
  def create
    @contact_type = current_user.contact_types.build(contact_type_params)

    respond_to do |format|
      if @contact_type.save
        format.html { redirect_to @contact_type, notice: 'Contact type was successfully created.' }
        format.json { render :show, status: :created, location: @contact_type }
      else
        format.html { render :new }
        format.json { render json: @contact_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_types/1
  # PATCH/PUT /contact_types/1.json
  def update
    respond_to do |format|
      if @contact_type.update(contact_type_params)
        format.html { redirect_to @contact_type, notice: 'Contact type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :edit }
        format.json { render json: @contact_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_types/1
  # DELETE /contact_types/1.json
  def destroy
    @contact_type.destroy
    respond_to do |format|
      format.html { redirect_to contact_types_url, notice: 'Contact type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_type
      @contact_type = ContactType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_type_params
      params.require(:contact_type).permit(:name, :fields_attributes => [:id, :field_type, :name, :required, :_destroy])
    end
end
