Feature: Testing PUT feature

  Scenario: validando metodo put
    Given url "https://jsonplaceholder.typicode.com/posts/2"
    And request { "title": "test", "body": "Esto es un test" }
    When method put
    Then status 200
    Then match response != ""
    Then match response contains { "title": "test", "body": "Esto es un test", "id": 2 }
    Then match header Content-Type == 'application/json; charset=utf-8'
    Then match karate.jsonPath(response, "$..*") contains "Esto es un test"
    Then eval karate.log('Response Time:', responseTime) && responseTime < 1000