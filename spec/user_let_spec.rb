class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def valid?
    !name.nil? && !email.nil?
  end
end




RSpec.describe User do
  let(:user) { User.new("Alice", "john@doe.com") }
 
  it "checks multiple properties of user" do
    puts "## Start......"
    user.name = "Bob"  # setter works now
    expect(user.name).to eq("Bob")  # getter
    expect(user).to be_a(User)
    expect(user.valid?).to be true
    puts "## End......"
  end
end



RSpec.describe "let vs let!" do
  let(:lazy_value) do
    puts "Evaluating lazy_value"
    10
  end

  let!(:eager_value) do
    puts "Evaluating eager_value"
    20
  end

  it "only uses eager_value" do
    expect(eager_value).to eq(20)
    # lazy_value is never called, so not evaluated
  end

  it "uses both" do
    expect(eager_value + lazy_value).to eq(30)
  end
end
