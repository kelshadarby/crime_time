![crime time logo](https://user-images.githubusercontent.com/55028065/88417246-d7f66f00-cd9e-11ea-8053-d03842729eba.png)

<p align="center">
  View the live app
  <a href="https://crime-time.herokuapp.com/">here</a>
 </p>

## Contents
- [About](#about)
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the Tests](#running-the-tests)
- [End to End Testing](#end-to-end-testing)
- [Built With](#built-with)
- [API's & Tools](#api-tools)
- [Contributors](#contributors)

## <a name="about"></a> About

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

### <a name="prerequisites"></a> Prerequisites

You will need to have the following in order to run this app on your local machine.

```
Rails 5.2.4.3
Ruby 2.5.3
Bundler version 2.1.4
```

### <a name="installation"></a> Installation

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

## <a name="running-the-tests"></a> Running the tests

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

### <a name="end-to-end-testing"></a> nd to end testing

These tests were written to check that the API endpoints were working as well as checking tha the data is returned as expected. The OAuth process was also tested.

__API Test Example__
```
get '/api/v1/crimes/states?state=CO'

expect(last_response).to be_successful

json = JSON.parse(last_response.body, symbolize_names: true)

expect(json[:data]).to be_instance_of(Hash)
expect(json[:data][:id]).to eql('CO')
expect(json[:data][:attributes]).to_not be_empty
expect(json[:data][:attributes]).to have_key(:rape_total)
expect(json[:data][:attributes]).to have_key(:property_crime_total)
expect(json[:data][:attributes]).to have_key(:homicide_total)
expect(json[:data][:attributes]).to have_key(:arson_total)
...
```

__View Test Example__
```
  it "Comparing two states" do
    visit user_compare_path

    within ('.state-1') do
      expect(page).to have_select('state')
      select "Colorado", from: :state
      expect(find('.state').value).to eq("CO")
    end

    within ('.state-2') do
      expect(page).to have_select('state')
      select "Texas", from: :state
      expect(find('.state').value).to eq("TX")
    end

    click_on "Compare"

    expect(page).to have_css('.state-1-table')
    within ('.state-1-table') do
      expect(page).to have_css('.aggravated-assault')
      expect(page).to have_css('.homicide')
      expect(page).to have_css('.rape')
      expect(page).to have_css('.property-crime')
      expect(page).to have_css('.arson')
    end

    expect(page).to have_css('.state-2-table')
    within ('.state-2-table') do
      expect(page).to have_css('.aggravated-assault')
      expect(page).to have_css('.homicide')
      expect(page).to have_css('.rape')
      expect(page).to have_css('.property-crime')
      expect(page).to have_css('.arson')
    end
  end

```

## <a name="built-with"></a> Built With

* [Rails](https://rubyonrails.org/) - The web framework used
* [Sinatra](http://sinatrarb.com/) - The API framework used

## <a name="api-tools"></a> API's & Tools Used

* [Google's OAuth](http://www.dropwizard.io/1.0.2/docs/) - Authentication
* [FBI Crime Data](https://crime-data-explorer.fr.cloud.gov/api) - Crime Statistics API

## <a name="contributors"></a> Contributors

* [**Jordan Sewell**](https://github.com/jrsewell400)
* [**Kelsha Darby**](https://github.com/kelshadarby)
* [**Ryan Camp**](https://github.com/cmpprg)
* [**Jenny Klich**](https://github.com/jklich151)
