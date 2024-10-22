Feature: login details

  Background:
    * def user =
    """
    {
      "email": "eve.holt@reqres.in",
      "password": "city"
    }
    """

    * def user2 =
    """
    {
      "email": "peter@klaven"
    }
    """

  Scenario: successful login

    Given url 'https://reqres.in/api/login'
    And request user
    When method POST
    Then status 200
    And match response.token contains '#string'

  Scenario: unsuccessful login

    Given url 'https://reqres.in/api/login'
    And request user2
    When method POST
    Then status 400
    And match response.error == "Missing password"