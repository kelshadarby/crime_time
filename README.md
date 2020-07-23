# [Crime Time](https://crime-time.herokuapp.com/)

Crime Time is a web application that calculates crime statistics in your home state or in an area of your choosing. Users are able to view national or state stats as well as compare two states. This app also allows users to sign in with their Google account to save their hometown and view their hometowns crime statistics

## <a name="getting-started"></a> Getting Started

Follow the steps below to get you a copy of the project up and running on your local machine for development and testing purposes. 

See deployment for notes on how to deploy the project on a live system.

1. Clone this repo onto your local machine

2. Run the following commands in your terminal to get the code up and running on your local machine 

- Make sure to run each of these without the $

```
$ bundle
$ rake db:create
$ rake db:migrate
$ rake db:seed
```

### Prerequisites

You will need to have the following in order to run this app on your local machine.

```
Rails 5.2.4.3
Ruby 2.5.3
Bundler version 2.1.4
```

### Installing

Follow the steps below to view this app locally

Step 1:
    Install all gems required by running the following command
    - Make sure you have completed the steps in the [getting started](#getting-started) section
```
$ bundle install
```

Step 2:
    Start the local rails server by running the following command
```
$ rails s
```

Step 3:
  View the website locally by visiting http://localhost:3000/

## Running the tests

__To run the entire test suite on your local machine run the following command__
```
$ bundle exec rspec
```

Note: You may be able to run this command using just `exec`


__To run a specific test file run the following command__

```
$ rspec <file_path>
```

Note: Your file path may look something like `spec/features/items/index_spec.rb`


__To run a specific test within a test file run the following command__
```
$ rspec <file_path>:<line_number>
```

Notes:
- Your line number should be the line of the beginning of the `it` block
- Example: `spec/features/items/index_spec.rb:15`

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Rails](https://rubyonrails.org/) - The web framework used
* [Sinatra](http://sinatrarb.com/) - The API framework used

## API's & Tools Used

* [Google's OAuth](http://www.dropwizard.io/1.0.2/docs/) - Authentication


## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
