@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
  @new
Feature:Cancel and Re allocate CIV

  #  Pre requisite:User must be the member of verification/valuation agency

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-365
  Scenario:Cancel collateral investigation verification
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on cancel icon
    When user cancel the CIV by providing reason to cancel it
    Then CIV should be canceled successfully

    #FeatureID-ACAUTOCAS-365
  Scenario:Validate application in grid after cancelling collateral investigation verification
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on cancel icon
    When user cancel the CIV by providing reason to cancel it
    And user check the application collateral investigation verification grid
    Then canceled application should not be visible in grid

   #FeatureID-ACAUTOCAS-365
  Scenario:Minimize the Cancel CIV pop up screen
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on cancel icon
    When user minimize the Cancel CIV pop up screen
    Then Cancel CIV pop up screen should be minimized

   #FeatureID-ACAUTOCAS-365
  Scenario:Maximize the minimize the Cancel CIV pop up screen
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on cancel icon
    And user minimize the Cancel CIV pop up screen
    When user maximize the minimized Cancel CIV pop up screen
    Then Cancel CIV pop up screen should be maximized

#FeatureID-ACAUTOCAS-365
  Scenario:Add <NoOfReasons> reason to Cancel CIV
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on cancel icon
    When user add "<NoOfReasons>" reason to Cancel CIV
    Then "<NoOfReasons>" reason should be added

#FeatureID-ACAUTOCAS-365
  Scenario:Delete the <NoOfReasons> added reasons to Cancel CIV
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on cancel icon
    When user add "<NoOfReasons>" reason to Cancel CIV
    And user delete the "<NoOfReasons>" added reasons
    Then "<NoOfReasons>" added reasons should be delete

    #FeatureID-ACAUTOCAS-365
  Scenario:Cancel the filling process of Cancel CIV
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on cancel icon
    When user fills some fields of Cancel CIV
    And user cancel the filling process of Cancel CIV
    Then filling process of Cancel CIV should be cancel


# Reallocate

   #FeatureID-ACAUTOCAS-365
  Scenario:Re allocate verification task
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on Re allocate icon
    When user Re allocates the CIV
    Then CIV should be re allocated successfully


   #FeatureID-ACAUTOCAS-365
  Scenario:Re allocate verification task without filling mandatory field
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on Re allocate icon
    When user Re allocates the CIV without filling agency
    Then CIV should not be re allocated with an error message

   #FeatureID-ACAUTOCAS-365
  Scenario:Minimize the Re allocate verification task pop up screen
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on Re allocate icon
    When user minimize the Re allocate verification task pop up screen
    Then Cancel CIV pop up screen should be minimized

   #FeatureID-ACAUTOCAS-365
  Scenario:Maximize the minimize the Re allocate verification task pop up screen
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on Re allocate icon
    And user minimize the Re allocate verification task pop up screen
    When user maximize the minimized Re allocate verification task pop up screen
    Then Re allocate verification task pop up screen should be maximized

       #FeatureID-ACAUTOCAS-365
  Scenario:Cancel the Re allocate verification task
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on Re allocate icon
    When user cancel the Re allocating process of Cancel CIV
    Then Re allocate verification task should be canceled

#Bulk Cancel and Re allocate

    #FeatureID-ACAUTOCAS-365
  Scenario:Cancel collateral investigation verification in bulk
    And user open collateral investigation verification page
    And user clicks on bulk selection of application checkbox
    And user clicks on cancel icon
    When user cancel the CIV by providing reason to cancel it
    Then CIV should be canceled in bulk successfully

    #FeatureID-ACAUTOCAS-365
  Scenario:Re allocate verification task in bulk
    And user open collateral investigation verification page
    And user clicks on bulk selection of application checkbox
    And user clicks on Re allocate icon
    When user Re allocates the CIV
    Then CIV should be re allocated in bulk successfully

    #FeatureID-ACAUTOCAS-365
  Scenario:Validate Re-allocated verification task
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on Re allocate icon
    And  user Re allocates the CIV
    And assigned user of Re-allocated agency logged in
    When assigned user open collateral investigation verification page
    Then assigned application should be present

    #FeatureID-ACAUTOCAS-365,CAS-106867
  Scenario:Cancel collateral investigation verification without providing any reason
    And user open collateral investigation verification page
    And user clicks on grid action option for an application
    And user clicks on cancel icon
    When user cancel the CIV without providing reason to cancel it
    Then CIV should not be canceled with an error message to provide reason

    #FeatureID-ACAUTOCAS-365,CAS-106867
  Scenario:Cancel CIV from application manager
    And user open application manager
    And user clicks on CIV manger
    And user search agency of which user are not member
    And user selects an application to cancel
    And user clicks on cancel icon
    When user cancel the CIV by providing reason to cancel it
    Then CIV should be canceled successfully

  #FeatureID-ACAUTOCAS-365,CAS-106867
  Scenario:Cancel CIV in bulk from application manager
    And user open application manager
    And user clicks on CIV manger
    And user search agency of which user are not member
    And user selects multiple applications to cancel in bulk
    And user clicks on cancel icon
    When user cancel the CIV by providing reason to cancel it
    Then CIV should be canceled successfully in bulk

  #FeatureID-ACAUTOCAS-365,CAS-106867
  Scenario:Re allocate CIV from application manager
    And user open application manager
    And user clicks on CIV manger
    And user search agency of which user are not member
    And user selects an application to reassign
    And user clicks on reassign button
    When user reassign CIV task to the user
    Then CIV task should be reassign to the user

  #FeatureID-ACAUTOCAS-365,CAS-106867
  Scenario:Re allocate CIV in bulk from application manager
    And user open application manager
    And user clicks on CIV manger
    And user search agency of which user are not member
    And user selects multiple applications to reassign in bulk
    And user clicks on reassign button
    When user reassign CIV task to the user
    Then CIV task should be reassign to the user