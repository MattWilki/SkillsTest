Feature: Verifying an account email
  Scenario: After registering for an account at MyFitnessPal we get a verification email
    Given a user registered for an account at MyFitnessPal
    When they complete the registration they should recieve an email for verification
    And when they open that email and click the link
    Then they should be prompted with a message displaying the verification was registered


    #This was for a project with MyFitnessPal, the task was to verify that the regristration email was sent