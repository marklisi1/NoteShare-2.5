Feature: Upon clicking the name of a course, you go to that course page
  Scenario: You are a student logged into the website
    Given you are on the courses page
    When you click on the name of a course 
    Then you are brought to the individual course page
      And you can see all corresponding notesheets