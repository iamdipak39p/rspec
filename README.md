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
