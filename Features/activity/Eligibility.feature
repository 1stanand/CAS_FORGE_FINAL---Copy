@Epic-Activity
@ReviewedBy-None
@ImplementedBy-aniket.tripathi
@AuthoredBy-kamal.shaiva
@ReviewedByDEV

Feature: Eligibility

  Background:
    Given user is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"


Scenario: ACAUTOCAS-2441:  Validate if user is able to create eligibility parameter
    And user clicks on create eligibility parameter in common master
    And user enters the code
    And user enters the name
    And user search the parameter
    And user select the parameter
    And user selects the status as active
    When user click on save and request approval
    Then user should be able to send for approval the new record
    And other authorised user should be able to approve the record


Scenario: ACAUTOCAS-2441:  Validate if user is able to create eligibility parameter
    And user clicks on create eligibility parameter in common master
    And user enters the code
    And user enters the name
    And user search the parameter
    And user select the parameter
    And user selects the status as inactive
    When user click on save and request approval
    Then user should be able to send for approval the new record
    And other authorised user should be able to approve the record


Scenario: ACAUTOCAS-2441:  Validate if user is able to create eligibility parameter
    And user clicks on create eligibility parameter in common master
    And user does not enter one or more mandatory fields
    And user selects the status as active or inactive
    When user click on save and request approval
    Then user should not be able to send for approval the new record
    And user should get the validation "this field is required"


Scenario: ACAUTOCAS-2442:  Validate if user is able to create eligibility sets
    And user clicks on create eligibility sets in common master
    And user enters the code
    And user enters the name
    And user enters the description
    And user selects the status as active
    And user select the active reason
    And user clicks on add eligibility criteria
    And user enters criteria name
    And user enters criteria description
    And user create criteria definition
    And user selects rule
    And user clicks on done
    When user click on save and request approval
    Then user should be able to send for approval the new record
    And other authorised user should be able to approve the record


Scenario: ACAUTOCAS-2442:  Validate if user is able to create eligibility sets
    And user clicks on create eligibility sets in common master
    And user enters the code
    And user enters the name
    And user enters the description
    And user selects the status as inactive
    And user select the active reason
    And user clicks on add eligibility criteria
    And user enters criteria name
    And user enters criteria description
    And user create criteria definition
    And user selects rule
    And user clicks on done
    When user click on save and request approval
    Then user should be able to send for approval the new record
    And other authorised user should be able to approve the record


Scenario: ACAUTOCAS-2442:  Validate if user is able to create eligibility sets
    And user clicks on create eligibility sets in common master
    When user tries to add or delete eligibility criteria
    Then user should be able to do so


Scenario: ACAUTOCAS-2442:  Validate if user is able to create eligibility sets
    And user clicks on create eligibility sets in common master
    And user does not enter one or more mandatory fields
    And user selects the status as active or inactive
    When user click on save and request approval
    Then user should not be able to send for approval the new record
    And user should get the validation "this field is required"


Scenario: ACAUTOCAS-2443:  Validate if user is able to create eligibility policy
    And user clicks on create eligibility policy in common master
    And user enters the code
    And user enters the name
    And user enters the description
    And user clicks on add eligibility set
    And user selects eligibility set
    And user selects rule
    And user select default as one of the records in eligibility set
    And user changes priority
    When user click on save and request approval
    Then user should be able to send for approval the new record
    And other authorised user should be able to approve the record


Scenario: ACAUTOCAS-2443:  Validate if user is able to create eligibility policy
    And user clicks on create eligibility policy in common master
    When user tries to add or delete eligibility sets
    Then user should be able to do so


Scenario: ACAUTOCAS-2443:  Validate if user is able to create eligibility policy
    And user clicks on create eligibility policy in common master
    And user does not enter one or more mandatory fields
    When user click on save and request approval
    Then user should not be able to send for approval the new record
    And user should get the validation "this field is required"


Scenario: ACAUTOCAS-2444:  Validate if user is able to create applicant eligibility policy
    And user clicks on create applicant eligibility policy in common master
    And user enters the code
    And user enters the name
    And user enters the description
    And user clicks on add eligibility set
    And user selects eligibility set
    And user selects rule
    And user select default as one of the records in eligibility set
    And user changes priority
    When user click on save and request approval
    Then user should be able to send for approval the new record
    And other authorised user should be able to approve the record


Scenario: ACAUTOCAS-2444:  Validate if user is able to create applicant eligibility policy
    And user clicks on create applicant eligibility policy in common master
    When user tries to add or delete eligibility sets
    Then user should be able to do so


Scenario: ACAUTOCAS-2444:  Validate if user is able to create applicant eligibility policy
    And user clicks on create applicant eligibility policy in common master
    And user does not enter one or more mandatory fields
    When user click on save and request approval
    Then user should not be able to send for approval the new record
    And user should get the validation "this field is required"


Scenario: ACAUTOCAS-2445:  Validate if user is able to attach applicant eligibility policy at product
    And user opens a product maintained in common master
    When user click on policies
    And clicks on add policy
    And select the applicant eligibility policy from dropdown
    And check the Override checkbox
    And clicks on done
    Then user should be able to send for approval the new record
    And other authorised user should be able to approve the record


Scenario: ACAUTOCAS-2446:  Validate if user is able to attach applicant eligibility policy at scheme
    And user opens a scheme maintained in common master under product maintained in above test case
    When user click on policy mapping
    And clicks on add policy
    And select the applicant eligibility policy from dropdown
    And select the effective from date
    And clicks on done
    Then user should be able to send for approval the new record
    And other authorised user should be able to approve the record


Scenario: ACAUTOCAS-2445:  Validate if user is able to attach applicant eligibility policy at product
    And user opens a product maintained in common master
    When user click on policies
    And clicks on add policy
    And select the applicant eligibility policy from dropdown
    And uncheck the Override checkbox
    And clicks on done
    Then user should be able to send for approval the new record
    And other authorised user should be able to approve the record


Scenario: ACAUTOCAS-2446:  Validate if user is able to attach applicant eligibility policy at scheme
    And user opens a scheme maintained in common master under product maintained in above test case
    When user click on policy mapping
    And clicks on add policy
    Then user should not be able to change the policy
