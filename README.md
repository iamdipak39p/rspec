## Running Tests

This project uses [RSpec](https://rspec.info/) for testing.

### RSpec Hooks Overview

In RSpec (Ruby testing framework), hooks are special blocks that run at various points in the test lifecycle to set up or tear down state. They’re commonly used to prepare test data, configure the environment, or clean up after tests.RSpec provides hooks that help with setting up and cleaning up test state.

- `before(:each)`: runs before each example
- `before(:all)`: runs once before all examples in a group
- `after(:each)`: runs after each example
- `after(:all)`: runs once after all examples
- `around(:each)`: wraps each example for before/after behavior

#### Example:

```ruby
RSpec.describe Order do
  before(:all) { puts "Before all" }
  before(:each) { puts "Before each" }
  after(:each)  { puts "After each" }
  after(:all)   { puts "After all" }

  it "runs test 1" { puts "Test 1" }
  it "runs test 2" { puts "Test 2" }
end
```
---

##  Memoization Using `let`

### What is `let`?

`let` defines a **lazy-evaluated, memoized helper method**. The value is computed the first time it's accessed in an example (`it` block) and then reused.

###  Benefits:

- Clean, DRY test setup
- Faster execution (lazy evaluation)
- Safer tests (memoized per example)

###  Example:

```ruby
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
    user.name = "Bob"
    expect(user.name).to eq("Bob")
    expect(user).to be_a(User)
    expect(user.valid?).to be true
  end
end
```

---

##  `let` vs `let!` vs `before`

| Feature     | `let`                  | `let!`                   | `before`              |
|-------------|------------------------|--------------------------- | ------------------------|
| Lazy?       |  Yes (on first use)    |  No (always evaluated)      |  No                  |
| Memoized?   |  Yes                   |  Yes                        |  No                  |
| Purpose     | Define test data        | Setup code w/ return value | Side effects/setup    