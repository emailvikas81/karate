Feature: Check returned users by the API

  Background:
    * url 'https://gorest.co.in'
    * header Authorization = 'Bearer zTVYdLsnaDjb8r6he0XKC-_mnedcqipKhSt1'

    Scenario: list all the users having name with john
      Given path '/public-api/users'
      And param first_name = 'john'
      And param status = 'inactive'
      When method get
      Then status 200
      And def userResponse = response
      Then match userResponse.result[*].first_name contains ["Johnnie"]
