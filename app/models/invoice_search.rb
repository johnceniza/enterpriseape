class InvoiceSearch
  #set up some setters
  attr_reader :date_from, :date_to
  
  def intialize(params)
    params ||= {} #saying that we are placing items into the params
    @date_from = parsed_date(params[:date_from], 7.days.ago.to_date.to_s) #parse_date is function we will build - 7 days is built in ruby code saying take this date_from and grab everything 7 days ago by default then transform date back to string
    @date_to = parsed_date(params[:date_to], Date.today.to_s) #just grabs today's date and turns it into a string (to be displayed)
  end
  
  def scope
    Invoice.where('date BETWEEN ? AND ?', @date_from, @date_to) #looks up invoice database and looks up date between date from and date to (check schema.rb for proper database attribute name)
  end
  
  private
  
  def parsed_date(date_string, deafult)
    Date.parse(date_string) #turn string into date format - built in ruby function
  rescue ArgumentError, TypeError #triggered if input type is not a date
    default
  end
  
    