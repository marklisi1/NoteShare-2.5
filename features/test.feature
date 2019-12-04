Feature: Generating a new course
  Scenario: You are a student logged into the website
    Given you are on the home page
    When you click on the Courses button
    Then you are brought to the Courses table
      And you can click Create New Course
      
