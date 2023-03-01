require './app/services/github_service.rb'


class GithubRepo 
  attr_reader :name, :contributors
         
  def initialize(repo_page, contributor_page)
  	@name = repo_page[:name]
    @contributors = contributor_page.map { |cont| [cont[:login], cont[:contributions]]}
  end

end

GithubRepo.new(GitHubService.repo_page, GitHubService.contributor_page)