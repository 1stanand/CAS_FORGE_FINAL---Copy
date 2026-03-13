@AuthoredBy-Yuvraj.Raghuwanshi
@ReviewedBy-Tarun.gupta
@DevTrack
@Epic-QueryModule
@ImplementedBy-
@TechReviewedBy-
#FeatureID-CAS-234897
Feature: CAS-234897 Validation task on Raise and Response Query event - API impact
  Background:
    Given user is on SSO login page
    And user logged in FinnOne Neo CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    # Pre-Requisites--
  # Create script rule to restrict raise/response query in rule master
  # Event 'RAISED_QUERY_SAVE' and 'RESPONSE_QUERY_SAVE' should be available in event definition master
  # Validation task should be added in 'RAISE_QUERY_SAVE' and 'RESPONSE_QUERY_SAVE' event with mapped rule

  Scenario: Try to raise query from the queryModuleRaiseService [CAS_Enq_12] API while validation rule is false
    When user tries to hit the API
    Then system should show validation error, thereby not allowing the query to be raised

  Scenario: Try to response query from the queryModuleResponseService [CAS_Enq_13] API while validation rule is false
    When user tries to hit the API
    Then system should show validation error, thereby not allowing the query to be responded