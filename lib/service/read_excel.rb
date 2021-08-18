class Service::ReadExcel
  def read(file)
    data = Roo::Spreadsheet.open(file)
    data
  end
end
