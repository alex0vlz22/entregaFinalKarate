Feature: Testing POST feature

  Scenario: validando metodo post
    Given url "https://jsonplaceholder.typicode.com/users/1/posts"
    And request {"data":{"email":"alex@gmail.com","first_name":"alex","last_name":"velez","text":"TextNotFoundException"}}
    When method post
    Then status 201
    And match response != ""
    And match response contains { "data": { "email": "alex@gmail.com", "first_name": "alex", "last_name": "velez", "text": "TextNotFoundException" }, "userId": "1", "id": 101 }
    And match header Content-Type == 'application/json; charset=utf-8'
    And match karate.jsonPath(response, "$..*") contains "velez"
    Then eval karate.log('Response Time:', responseTime) && responseTime < 1000