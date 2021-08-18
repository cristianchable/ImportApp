class ImportSalesController < ApplicationController
  before_action :set_import_sale, only: [:show]
  def index
    @import_sales = ImportSale.all
  end

  def new
    @import_sale = ImportSale.new
  end

  def create
    respond_to do |format|
      Service::ImportData.new(import_sale_params).import_data
      format.html { redirect_to import_sales_path, success: "Datos importados correctamente" }
    rescue StandardError => e
      format.html { redirect_to new_import_sale_path, danger: e.message }
    end
  end

  def edit
  end

  def update

  end

  def show
  end

  private
  def import_sale_params
    params.require(:import_sale).permit(:file)
  end
  def set_import_sale
    @import_sale = ImportSale.find(params[:id])
  end
end
