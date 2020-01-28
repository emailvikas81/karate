Feature: check returned countries by API

  Background:
    * url 'https://www.universe.com'
    * header Accept = 'application/graphql'

  Scenario: GraphQL
    Given path '/graphiql'
    And request  "query { title } "
    When method GET
    Then status 200