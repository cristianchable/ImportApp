class Service::ImportData
  def initialize(file)
    @data = Service::ReadExcel.new().read(file[:file])
  end

  def import_data
    headers = @data.row(1) #Get the header row
    ImportSale.transaction do
      import_sale = ImportSale.new()
      counter = 0
      @data.each_with_index do |row, index|
        next if index == 0
        row_data = Hash[[headers, row].transpose] #create hash from headers and cells
        import_sale.sales << create_sale(row_data)
        counter += 1
      end
      import_sale.import_quantity = counter.to_i
      import_sale.save!
    end
  end

  private

  def create_sale row
    seller = Seller.find_or_initialize_by(name: row['vendedor'], address: row['direccion de vendedor'])
    product = Product.find_or_initialize_by(description: row['descripcion del item'], price: row['precio del item'].to_f)
    sale = Sale.new(buyer: row['comprador'],
                    product: product,
                    quantity: row['total de items'].to_i,
                    seller: seller)
    p sale
    sale
  end
end
