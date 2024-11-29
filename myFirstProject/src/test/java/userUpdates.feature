Feature: create, update, delete new user

  Background:
    * def user =
    """
    {
      "name": "morpheus",
      "job": "manager"
    }
    """

    * def newUser =
    """
    {
      "name": "mouse",
      "job": "leader"
    }
    """

  Scenario: create new user

    Given url 'https://reqres.in/api/users'
    And request user
    When method POST
    Then status 201
    And match response.name == "morpheus"
    And match response.job == "manager"


  Scenario: update user

    Given url 'https://reqres.in/api/users/2'
    When request newUser
    And method PUT
    Then status 200
    And match response.name == "mouse"
    And match response.job == "leader"


  Scenario: update user

    Given url 'https://reqres.in/api/users/2'
    When request newUser
    And method PATCH
    Then status 200
    And match response.name == "mouse"
    And match response.job == "leader"


  Scenario: delete new user

    Given url 'https://reqres.in/api/users/2'
    When request newUser
    And method DELETE
    Then status 204