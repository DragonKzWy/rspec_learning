# Ruby RSpec Testing Example: Hero Class

This repository demonstrates how to write and run unit tests in Ruby using RSpec. The example focuses on a simple `Hero` class and its corresponding test file (`hero_spec.rb`). This project is ideal for beginners learning Ruby and RSpec.

---

## Table of Contents
1. [Project Overview](#project-overview)
2. [Installation](#installation)
3. [Running Tests](#running-tests)
4. [Code Structure](#code-structure)
5. [Lessons Learned](#lessons-learned)
6. [Contributing](#contributing)
7. [License](#license)

---

## Project Overview

This project includes:
- A `Hero` class with a default weapon.
- An RSpec test file (`hero_spec.rb`) to validate the behavior of the `Hero` class.
- A `spec_helper.rb` file for RSpec configuration.

The `Hero` class has the following attributes and behavior:
- `weapon`: An attribute with a default value of `'sword'`.

The `hero_spec.rb` file contains a unit test to ensure the `Hero` class initializes with the correct default weapon.

---

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/DragonKzWy/rspec_learning.git
   cd rspec_learning
   ```

2. **Install dependencies**:
   Ensure you have Ruby installed. Then, install the required gems:
   ```bash
   bundle install
   ```

---

## Running Tests

To run the tests, use the following command:
```bash
bundle exec rspec spec/hero_spec.rb
```

### Expected Output
If everything is set up correctly, you should see output similar to:
```
Hero
  has a sword

Finished in 0.002 seconds (files took 0.1 seconds to load)
1 example, 0 failures
```

---

## Code Structure

```
your-repo-name/
├── lib/
│   └── hero.rb                # The Hero class implementation
├── spec/
│   ├── hero_spec.rb           # Unit tests for the Hero class
│   └── spec_helper.rb         # RSpec configuration
├── Gemfile                    # Dependencies for the project
└── README.md                  # This file
```

---

### Code Details

#### `lib/hero.rb`
```ruby
class Hero
  attr_accessor :weapon

  def initialize
    @weapon = 'sword'
  end
end
```

#### `spec/hero_spec.rb`
```ruby
require 'spec_helper'
require_relative '../lib/hero'

describe Hero do
  it "has a sword" do
    hero = Hero.new
    expect(hero.weapon).to eq('sword')
  end
end
```

#### `spec/spec_helper.rb`
```ruby
require 'rspec'
```

#### `Gemfile`
```ruby
source 'https://rubygems.org'

gem 'rspec'
```

---

## Lessons Learned

While working on this project, I learned the following:
1. **Creating a Simple Class**:
   - I created a `Hero` class with a default attribute (`weapon`) set to `'sword'`.

2. **Writing My First RSpec Test**:
   - I wrote a test to ensure the `Hero` class initializes with the correct default weapon.
   - I used `describe`, `it`, and `expect` to structure and validate the test.

3. **Understanding `require` and `require_relative`**:
   - I learned how to properly load files using `require` for gems and `require_relative` for local files.

4. **Running Tests**:
   - I ran the test using `bundle exec rspec` and verified that the `Hero` class behaves as expected.

---

## Contributing

Contributions are welcome! If you'd like to improve this project, please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- Thanks to the Ruby and RSpec communities for providing excellent documentation and resources.
- Special thanks to my AI assistant for helping me troubleshoot and learn along the way!

---
