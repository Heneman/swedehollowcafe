class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    puts "Inpection #1 " + @email.inspect
    Mail.deliver do
      puts "Inspection #2 " + @email.inspect
      to 'kyle.heneman@gmail.com'
      from @email.from
      subject @email.subject
      body @email.body
      @email.attachments.each { |attachment|
        add_file :filename => File.basename(attachment), :content => attachment
      }
    end
  end
end