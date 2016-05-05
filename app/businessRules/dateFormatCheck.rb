def DateFormatCheck(csvin, params)

  case params[:timeFormat]
  when "hh:mm:ss"
    m = /^([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?$/
    return checkMatch(csvin,m)
  when "YYYY-MM-DD"
  when "YYYY-MM"
  when "YYYY"
  when "DD/MM/YYYY"
  when "MM/DD/YYYY"
  else #default case
  end
end


def checkMatch(csvin,m)
  csvout = []
  CSV.foreach(csvin, {:headers => true, :header_converters => :symbol}) do |row|
    checkFormat = row[params[:column]].match(m)
    unless checkFormat
      row << [failure_reason: "Doesn't match the given date format."]
      csvout << row.values
  end
  return csvout
end
