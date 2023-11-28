Feature: Testing PUT feature

  Scenario: validando metodo put
    Given url "https://jsonplaceholder.typicode.com/users/1/posts/" + "131"
    And request {"data":{"email":"alex@gmail.com","first_name":"bas","last_name":"velez","text":"TextNotFoundException"}}
    When method put
    Then status 200
    And print response
    And match response.data.first_name == "bas"