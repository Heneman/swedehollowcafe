class EmailProcessor
  def initialize( email )
    @email = email
  end

  def process
    mail = Mail.new

    mail[ :to ] = "kyle.heneman@gmail.com"
    mail[ :from ] = @email.from[ :email ]
    mail[ :subject ] = @email.subject
    mail[ :body ] = @email.body

    @email.attachments.each do { | attachment |
      add_file( attachment )
    }

    mail.deliver
  end
end