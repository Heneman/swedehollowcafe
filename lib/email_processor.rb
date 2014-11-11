class EmailProcessor
  def initialize( email )
    @email = email
  end

  def process
    mail = Mail.new

    mail[ :to ] = ENV["FORWARDING_EMAIL"]
    mail[ :from ] = @email.from[ :email ]
    mail[ :subject ] = @email.subject
    mail[ :body ] = @email.body

    mail.deliver
  end
end