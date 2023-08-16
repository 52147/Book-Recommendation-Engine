# Book Recommendation Engine

The Book Recommendation Engine is a simple Ruby-based command-line application that allows users to register, specify their favorite book genres, and get book recommendations based on their preferences.

## Features

- **User Registration**: Quickly register with a username.
- **Add Favorite Genres**: Specify the genres you love.
- **Add Read Books**: Keep track of your reading journey.
- **Get Recommendations**: Discover new books based on your tastes.

## Getting Started

### Prerequisites

Ensure you have Ruby installed on your system. If not, download and install from the [official Ruby website](https://www.ruby-lang.org/).

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/book-recommendation-engine.git
   ```
2. **Navigate to the project directory**:
   ```bash
   cd book-recommendation-engine
   ```
### Usage

1. **Start the program**:
   ```bash
   ruby main.rb
   ```
2. **Follow the on-screen prompts to**:

  - Register a new user
  - Add favorite genres
  - Mark books as read
  - Get book recommendations
## Directory Structure
```bash
book-recommendation-engine/
│
├── models/
│   ├── book.rb         # Defines the Book class
│   └── user.rb         # Defines the User class
│
├── services/
│   └── storage.rb      # Service to store and retrieve books & users
│
├── main.rb             # The main application script
└── README.md           # This file
```

## Testing
You can manually test the application features by following the test cases provided in the tests/ directory. Automated tests are a work in progress.

## Contributing
1. Fork the repository on GitHub.
2. Clone the forked repo to your local machine.
3. Make your changes.
4. Push your changes to your fork on GitHub.
5. Create a pull request to merge your changes to the main repository.
## License
This project is licensed under the MIT License.

