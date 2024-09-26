Feature: create register

  Background:
    * def register =
    """
    {
      "email": "eve.holt@reqres.in",
      "password": "pistol"
    }
    """

    * def register2 =
    """
    {
      "email": "register@register"
    }
    """

  Scenario: successful register

    Given url 'https://reqres.in/api/register'
    And request register
    When method POST
    Then status 200

  Scenario: unsuccessful register

    Given url 'https://reqres.in/api/register'
    And request register2
    When method POST
    Then status 400