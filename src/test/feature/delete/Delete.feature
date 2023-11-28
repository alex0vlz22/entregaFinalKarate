Feature: Testing DELETE feature

  Scenario: validando metodo delete
    Given  url "https://jsonplaceholder.typicode.com/users/1/posts/" + "131"
    When method delete
    Then status 204