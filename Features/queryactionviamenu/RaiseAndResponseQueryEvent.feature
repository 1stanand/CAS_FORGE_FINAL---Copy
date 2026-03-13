@AuthoredBy-Yuvraj.Raghuwanshi
@ReviewedBy-Tarun.gupta
@DevTrack
@Epic-QueryModule
@ImplementedBy-
@TechReviewedBy-
#FeatureID-CAS-234897
Feature: CAS-234897 Validation task on Raise and Response Query event
  Background:
    Given user is on SSO login page
    And user logged in FinnOne Neo CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  Scenario: Create script rule to restrict raise/response query
    And user navigates to the rule master
    When create new script type rule
    And return "false" in rule
    Then rule should be created successfully

  Scenario: Verify 'RAISED_QUERY_SAVE' event in event definition
    And user navigates to event definition master from CAS menu
    When user search events in event definition from CAS menu
    Then event 'RAISED_QUERY_SAVE' should be available

  Scenario: Verify 'RESPONSE_QUERY_SAVE' event in event definition
    And user navigates to event definition master from CAS menu
    When user check events in event definition
    Then event 'RESPONSE_QUERY_SAVE' should be available

  Scenario: Create 'RAISED_QUERY_SAVE' event with validation task
    And user navigates to event definition master from CAS menu
    When create new event 'RAISE_QUERY_SAVE'
    And add validation task in event with mapped rule
    Then event should be created successfully

  Scenario: Create 'RESPONSE_QUERY_SAVE' event with validation task
    Given user navigates to event definition master from CAS menu
    When create new event 'RESPONSE_QUERY_SAVE'
    And add validation task in event with mapped rule
    Then event should be created successfully

    #${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
#${ApplicationStage:["Lead details", "KYC", "DDE", "Recommendation", "Credit Approval", "Post Approval", "Disbursal Initiation", "Disbursal Author", "Renewal"]}
#${ApplicantType:["indiv", "nonindiv"]}

  Scenario Outline: Application is in <ApplicationStage> with an attempt to raise a query inside the workflow, despite the validation rule being false
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user clicks on the raise query from the more actions button
    When user tries to raise query
    And save the query
    Then System should show a validation error, thereby not allowing the query to be raised
    Examples:
      |ProductType	|ApplicantType 	|ApplicationStage	|Category	|Key	|
      |<ProductType>	|<ApplicantType>|<ApplicationStage>	|		|	|

#${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
#${ApplicationStage:["Lead details", "KYC", "DDE", "Recommendation", "Credit Approval", "Post Approval", "Disbursal Initiation", "Disbursal Author", "Renewal"]}
#${ApplicantType:["indiv", "nonindiv"]}

  Scenario Outline: Application is in <ApplicationStage> with an attempt to raise a query inside the workflow, despite the validation rule being false
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user clicks on the response query from the more actions button
    When user tries to respond query
    And save the response
    Then System should show a validation error, thereby not allowing the query to be responded
    Examples:
      |ProductType	|ApplicantType 	|ApplicationStage	|Category	|Key	|
      |<ProductType>	|<ApplicantType>|<ApplicationStage>	|		|	|

  Scenario: Try to raise query outside workflow while validation rule is false
    And user navigates to raise query screen from menu
    And user search the application id of the application for which a query needs to be raised
    When user tries to raise query
    And save the query
    Then System should show a validation error, thereby not allowing the query to be raised

  Scenario: Try to respond query outside workflow while validation rule is false
    And user navigates to response query screen from menu
    And user search the application id of the application for which a query needs to be responded
    When user tries to response query from the menu
    And save the query
    Then system should show validation error, thereby not allowing the query to be responded

    #${ProductType:["PF","HL","CON_VEH","MULF","FAS","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
#${ApplicationStage:["Lead details", "KYC", "DDE", "Recommendation", "Credit Approval", "Post Approval", "Disbursal Initiation", "Disbursal Author", "Renewal"]}
#${ApplicantType:["indiv", "nonindiv"]}

  Scenario Outline: Application is in <ApplicationStage>, then the user tries to move it to the next <ApplicationStage> while auto raise query is configured
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And validation rule is false
    When user tries to move to next stage
    Then system should show rule validation error in the activity accordion
    Examples:
      |ProductType	|ApplicantType 	|ApplicationStage	|Category	|Key	|
      |<ProductType>	|<ApplicantType>|<ApplicationStage>	|		|	|


  Scenario:   Inactive 'RAISED_QUERY_SAVE' event in event definition while validation rule is false
    And user navigates to event definition master
    And inactive the 'RAISED_QUERY_SAVE' event
    And user navigates to raise query screen from menu
    And user search the application id of the application for which a query needs to be raised
    When user tries to raise the query
    Then Query should be raised successfully

  Scenario:   Inactive 'RESPONSE_QUERY_SAVE' event in event definition while validation rule is false
    And user navigates to event definition master
    And inactive the 'RESPONSE_QUERY_SAVE' event
    And user navigates to response query screen from menu
    And user search the application id of the application for which a query needs to be responded
    When user tries to respond the query
    Then Query should be responded successfully