class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    Mail.deliver do
      to 'kyle.heneman@gmail.com'
      from self.email.from
      subject self.email.subject
      body self.email.body
      self.email.attachments.each { |attachment|
        add_file :filename => File.basename(attachment), :content => attachment
      }
    end
  end
end