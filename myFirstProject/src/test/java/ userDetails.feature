Feature: fetching User Details
  Scenario: testing the get call for User Details

    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200


  Scenario: testing the get call for User Details

    Given url 'https://reqres.in/api/users/100'
    When method GET
    Then status 404



  Scenario: testing the get call for List users

    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
