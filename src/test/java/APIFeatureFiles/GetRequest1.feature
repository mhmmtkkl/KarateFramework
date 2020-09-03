Feature: Check status code

  Scenario: Check the status code is 200


      Given url 'https://reqres.in/api/users/3'
#     Sending the Get request to API end point
      When method get
#    Checking the status code
      Then status 200
#    Printing the response
      And print response





