# README

This is a basic Ruby on Rails application to import and sort users and their vehicle information. Follow the instructions below to set up and run the project on your local machine.

## Prerequisites

- Ruby Version (>= 3.3.0)
- Rails Version (>= 7.1.3.4 )
- Node.js (>= 18.0.0)
- Yarm (>= 1.22.19)

## Getting Started

1. Clone the repository
```bash
git clone git@github.com:mikeheft/outdoor_sy.git
cd outdoor_sy
```

2. Install dependencies
```bash
bundle install
yarn install
rails assets:precompile
```

3. Set up database
_Make sure PostgreSQL is running on your machine. Then, create and migrate the database_
```bash
rails db:create db:migrate
```

4. Start Rails Server
```bash
rails s
```
The application should now be running on `http://localhost:3000`
- If you've run some other ports previously and you're getting an error on starting the server with the default port, you can either clear your cookies or add the option to start on a different port, `rails s -p 3001`


![Example of application running](<Screen Recording 2024-06-18 at 11.11.49 AM.gif>)

## Testing
To run the test suite:
```bash
bundle exec rspec
```

## Contributing
If you want to contribute to this project, please fork the repository and create a pull request. Make sure to include tests for any new features or bug fixes.
#### RuboCop
If you're wanting to implement a new custom cop, they need to be created in the `lib/rubocop/cop/custom` directory.
Any new cops ___MUST___ be for the entire code base. Custom cops that target a subset of directories/files will not be accepted.

#### Sorbet
We use [Sorbet](https://sorbet.org/) to turn Ruby into a statically typed language. Any new additions to this application, ___must___ be `# typed: strict`. This is to ensure we enforce the types for the arguments and returns.
