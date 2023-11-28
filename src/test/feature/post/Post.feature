Feature: Testing POST feature

  Scenario: validando metodo post
    Given url "https://jsonplaceholder.typicode.com/users/1/posts"
    And request {"data":{"email":"alex@gmail.com","first_name":"alex","last_name":"velez","text":"TextNotFoundException"}}
    When method post
    When status 201
    Then match response != ""
    Then match response contains { "data": { "email": "alex@gmail.com", "first_name": "alex", "last_name": "velez", "text": "TextNotFoundException" }, "userId": "1", "id": 101 }
    Then match header Content-Type == 'application/json; charset=utf-8'
    Then match karate.jsonPath(response, "$..*") contains "velez"
    Then eval karate.log('Response Time:', responseTime) && responseTime < 1000