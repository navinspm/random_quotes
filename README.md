# Random Quotes

   A gem to show random quotes on your rails view files

## Installation

Add to your Gemfile:

```gem 'random_quotes'```

Or install:

$ gem install random_quotes

## Usage

In your view pages simply call

 ```<%= sample_quotes %>```

 Now Quotes will be changed automatically,each time you refresh the page

And that's it!

## Configuration

    I have added more than 250 quotes with this gem, If you want to add your own quotes 

create file
 
 ```config/initializers/random_quotes.rb```

and add your quotes

    ```RandomQuotes.configure.quotes = "my quote 1 ,my quote 2,my quote 3"```

Now 
    ```<%= sample_quotes %>``` - will display quotes in gem
    ```<%= my_quotes %>``` - will display quotes from initializer
    ```<%= random_quotes %>```- will display quotes in gem

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

