class HistorySearch
  attr_reader :date_from, :date_to

  def initialize(params)
    params ||= {}
    year = History.first.created_at.time.year.to_s
    month = History.first.created_at.time.month.to_s
    day = History.first.created_at.time.day.to_s

    # raise year + "-" + month + "-" + day
    # raise 30.year.ago.to_date.to_s
    @date_from = parsed_date(params[:date_from], year + "-" + month + "-" + "0" + day)
    @date_to = parsed_date(params[:date_to], Date.tomorrow.to_s)
  end

  def scope
    History.where('created_at BETWEEN ? AND ?', @date_from, @date_to)
  end

  private

  def parsed_date(date_string, default)
    Date.parse(date_string)
  rescue ArgumentError, TypeError
    default
  end
end
