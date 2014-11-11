class EmailProcessor
  def initialize( email )
    @email = email
    puts "To: " + @email.to.to_s
    puts "From: " + @emil.from.to_s
    puts "Subject: " + @email.subject.to_s
    puts "Body: " + @email.body.to_s
  end

  def process
    mail = Mail.new

    mail[ :to ] = "kyle.heneman@gmail.com"
    mail[ :from ] = @email.from
    mail[ :subject ] = @email.subject
    mail[ :body ] = @email.body

    @email.attachments.each { | attachment |
      add_file :filename => File.basename( attachment ), :content => attachment
    }

    mail.deliver
  end
end