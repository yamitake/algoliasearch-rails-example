class Contact < ActiveRecord::Base

  include AlgoliaSearch
  algoliasearch per_environment: true do
    attributesToIndex ['name', 'unordered(email)', 'current_company_name']
    attributesForFaceting ['current_company_name']
  end

end
