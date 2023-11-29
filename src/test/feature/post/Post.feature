Feature: Testing POST feature

  Scenario: validando metodo post
    Given url "https://jsonplaceholder.typicode.com/users/1/posts"
    And request { "title": "test", "body": "test" }
    When method post
    When status 201
    Then match response != ""
    Then match response contains { "id": 101, "title": "test", "body": "test", "userId": "1" }
    Then match header Content-Type == 'application/json; charset=utf-8'
    Then match karate.jsonPath(response, "$..*") contains 101
    Then eval karate.log('Response Time:', responseTime) && responseTime < 1000