Feature: Testing GET feature

  Scenario: Test a Sample Get API
    Given url "https://jsonplaceholder.typicode.com/users/1/posts"
    When method GET
    Then status 200