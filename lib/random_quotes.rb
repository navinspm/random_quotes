
require 'random_quotes/version'
require 'random_quotes/quotes'

module RandomQuotes
  
   class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
  end

  class Configuration
    attr_accessor :quotes

    def initialize
      @quotes = quotes
    end
  end
  
  # Generate three ideas!
  def sample_quotes
    PRE_QUOTES.sample
  end

   def my_quotes 
    RandomQuotes.configuration.quotes.split(',').sample if RandomQuotes.configuration && RandomQuotes.configuration.quotes
  end

  def random_quotes
  	if  RandomQuotes.configuration && RandomQuotes.configuration.quotes
      (RandomQuotes.configuration.quotes.split(',') + PRE_QUOTES).sample 
    else
    	PRE_QUOTES.sample
    end
  end
end

ActionView::Base.send(:include, RandomQuotes) if defined?(ActionView::Base)