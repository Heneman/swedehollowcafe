class EmailProcessor
  def initialize(email)
    @email = email
    puts @email.inspect
  end

  def process
    Mail.deliver do
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