Feature: fetching User Details
  Scenario: testing the get call for Single User

    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And match response.data.first_name == "Janet"


  Scenario: testing the get call for Single User Not Found

    Given url 'https://reqres.in/api/users/23'
    When method GET
    Then status 404


  Scenario: testing the get call for List Users

    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
