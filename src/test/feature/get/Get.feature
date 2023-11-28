Feature: Testing GET feature

  Scenario: validando metodo get
    Given url "https://jsonplaceholder.typicode.com/users/1/posts"
    When method GET
    Then status 200