Feature: delayed response
  Scenario: testing the get call for delayed response

    Given url 'https://reqres.in/api/users?delay=3'
    When method GET
    Then status 200
