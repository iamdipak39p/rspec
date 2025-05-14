class User
  attr_reader :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end
end



RSpec.describe User do
  
  before(:all) do
    puts "User Class"
  end

  def build_user
    User.new('Alice', 'alice@example.com')
  end

  it 'has correct name' do
    expect(build_user.name).to eq('Alice')
  end

  it 'has correct email' do
    expect(build_user.email).to eq('alice@example.com')
  end
end



=begin

in case if you change the name of instance @user instaed of changing it in every example group 
you can use helper method.Which will reduce the developer efforts to change the name everywhere
=end