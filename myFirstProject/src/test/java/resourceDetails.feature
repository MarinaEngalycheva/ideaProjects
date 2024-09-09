Feature: fetching Resource Details

  Scenario: testing the get call for List Resources

    Given url 'https://reqres.in/api/unknown'
    When method GET
    Then status 200

  Scenario: testing the get call for Single Resource

    Given url 'https://reqres.in/api/unknown/2'
    When method GET
    Then status 200

  Scenario: testing the get call for Single Resource Not Found

    Given url 'https://reqres.in/api/unknown/22'
    When method GET
    Then status 404
