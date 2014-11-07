class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    Mail.deliver do
      to 'kyle.heneman@gmail.com'
      from @email.from
      subject @email.subject
      body @email.body
    end
  end
end