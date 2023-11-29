Feature: Testing PUT feature

  Scenario: validando metodo put
    Given url "https://jsonplaceholder.typicode.com/posts/5"
    And request { "userId": 1, "id": 2, "title": "test", "body": "Esto es un test" }
    When method put
    Then status 200
    Then match response.data.first_name == "bas"