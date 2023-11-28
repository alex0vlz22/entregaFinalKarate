Feature: Testing GET feature

  Scenario: validando metodo get
    Given url "https://jsonplaceholder.typicode.com/users/1/posts"
    When method GET
    And status 200
    Then match response != ""
    Then match header Content-Type == 'application/json; charset=utf-8'
    Then match header Date contains '2023'
    Then match header Server != null
    Then eval karate.log('Response Time:', responseTime) && responseTime < 1000