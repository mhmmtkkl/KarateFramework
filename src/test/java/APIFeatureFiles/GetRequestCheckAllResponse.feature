Feature: Checking all response code

  Scenario: Check the response

    Given url 'https://reqres.in/api/users/3'
#     Sending the Get request to API end point
    When method get
#    Checking the status code
    Then status 200
    #    Printing the response
    And print response
#    Checking the response code from the API end point
    Then match response == {"data":{"id":3,"email":"emma.wong@reqres.in","first_name":"Emma","last_name":"Wong","avatar":"https://s3.amazonaws.com/uifaces/faces/twitter/olegpogodaev/128.jpg"},"ad":{"company":"StatusCode Weekly","url":"http://statuscode.org/","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things."}}



