Feature: Testing one data

  Scenario: Test all response

#    expectedOutput will store the data from response.json with this line of code we are able to get the data(connection) between feature file and
#      json file
    Given def expectedOutput = read('response.json')
    Given url 'https://reqres.in/api/users/3'
#     Sending the Get request to API end point
    When method get
#    Checking the status code
    Then status 200
#    Printing the response
    And print response
#    This is a assert part verifying expected(expectedOutput) result is matching with actual(response) result
    Then match response == expectedOutput


  Scenario: Test ID

#    expectedOutput will store the data from response.json with this line of code we are able to get the data(connection) between feature file and
#      json file
    Given def expectedOutput = read('response.json')
    Given url 'https://reqres.in/api/users/3'
#     Sending the Get request to API end point
    When method get
#    Checking the status code
    Then status 200
    #    Printing the response
    And print response
#    This is a assert part verifying expected(expectedOutput) result is matching with actual(response) result
    Then match response.data.id == 3
#    'emma.wong@reqres.in' --> is hard coded
    Then match response.data.email == 'emma.wong@reqres.in'
    Then match response.data.first_name == expectedOutput.data.first_name



