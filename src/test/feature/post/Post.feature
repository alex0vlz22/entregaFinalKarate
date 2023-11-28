Feature: Testing POST feature

  Scenario: validando metodo post
    Given url "https://jsonplaceholder.typicode.com/users/1/posts"
    And request {"data":{"email":"alex@gmail.com","first_name":"alex","last_name":"velez","text":"TextNotFoundException"}}
    When method post
    Then status 201
    And print response
    And match response.id != null