Feature: Testing DELETE feature

  Scenario: validando metodo delete
    Given  url "https://jsonplaceholder.typicode.com/posts/2"
    When method delete
    Then status 200
    Then match response == {}
    Then match header Content-Type == 'application/json; charset=utf-8'
    Then match header Date contains '2023'
    Then match header Server != null
    Then eval karate.log('Response Time:', responseTime) && responseTime < 1000