require  '../app/services/github_service'
require  '../app/poros/github_service'

class GithubRepoSearch
  def github_repo_information
    service.films.map do |data|
      Film.new(data)
    end
  end

  def service
    GhibliService.new
  end

