Feature: Testing DELETE feature

  Scenario: validando metodo delete
    Given  url "https://jsonplaceholder.typicode.com/users/1/posts/" + "1"
    When method delete
    Then status 204