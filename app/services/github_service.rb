require 'httparty'
require 'json'
require 'pry'

class GitHubService  
  def self.get_url(url) #Make a GET request
    response = HTTParty.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.repo_page
    get_url('https://api.github.com/repos/kassandraleyba/little-esty-shop')
  end

  def self.contributor_page
    get_url('https://api.github.com/repos/kassandraleyba/little-esty-shop/contributors')
  end
end