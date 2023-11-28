Feature: Testing OPTIONS feature

  Scenario: validando metodo options
    Given url "https://jsonplaceholder.typicode.com/users/1/posts"
    When method options
    Then status 204
    Then match header Access-Control-Allow-Methods contains 'GET'
    Then print response
    Then print responseHeaders['Access-Control-Allow-Methods'][0]
    Then eval karate.log('Response Time:', responseTime) && responseTime < 1000