@Epic-Document
@AuthoredBy-Anshu.bhaduri
@ReviewedBy-harshprit.kumar
@TechReviewedBy-
@Islamic
@Conventional
@Release
@RunConfig-3

Feature: Document Checklist Master

  Background:
    Given maker logged in "Common Masters" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  @ImplementedBy-manish.yadav2
  #15_CAS-65357
  # FeatureID-ACAUTOCAS-1,ACAUTOCAS-252,ACAUTOCAS-253,ACAUTOCAS-254,ACAUTOCAS-255,CAS-65357
  Scenario: ACAUTOCAS-8582:  Validation for at least one document should be attached with Document Checklist Master
    And user reads data from the excel file "document_masters.xlsx" under sheet "document_checklists" and row 0
    When user navigates to document checklist master
    And user opens document checklist in edit mode
    And user deletes all the attached documents from checklist
    Then user should be able to get proper error message while saving the document checklist