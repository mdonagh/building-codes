task :send_codes do
  @client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']
  
    if (Code.find_by(date_string: Time.now.strftime("%-d" + "-" + "%b")) != nil)
      @today = Time.now.strftime("%-d" + "-" + "%b")
      @code_objects = Code.where(date_string: @today)

      Phone.all.each do |p|
        @client.messages.create(from: ENV['TWILIO_PHONE'], to: p.phone_string, body: "First floor code: #{@code_objects[0].code}\nSecond floor code: #{@code_objects[1].code}")
      end
    end
end