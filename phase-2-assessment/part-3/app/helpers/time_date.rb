helpers do
  def date(date)
    t = Time.now
    start_time = t.strftime("%B %d, %Y")
  end

  def time(time)
    t = Time.now
    start_time = t.strftime("%I:%M %p")
  end

  # def date_and_time(datetime)
  #   datetime.strftime("%I: %M %p")
  # end

end
