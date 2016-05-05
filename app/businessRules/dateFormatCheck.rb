def DateForamtCheck(csvFile, column, params)

    case params[:timeFormat]
    when "hh:mm:ss"

        m = /([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?/.match(row)
        unless m

    when "YYYY-MM-DD"
    when "YYYY-MM"
    when "YYYY"
    when "DD/MM/YYYY"
    when "MM/DD/YYYY"
    else
