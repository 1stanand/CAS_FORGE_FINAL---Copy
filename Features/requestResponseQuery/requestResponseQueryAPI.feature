@AuthoredBy-yuvraj.raghuwanshi
@ReviewedBy-Sajja.Ravikumar
@ImplementedBy-aqib.war
@TechReviewedBy-Rishabh.Garg
@DevTrack
@Release
@Conventional
#FeatureID-CAS-234897

@Epic-QueryModule
@API
@RequestResponseQueryApi
Feature: CAS_234897 Validation task on Raise and Response Query event

  Scenario Outline: Application is at a particular stage and try to raise query from the service when the validation rule is false
    Given user reads data from the excel file "<ExcelFile>" under sheet "<SheetName>" and row 0
    When User hits raiseQuery "<ServiceName>" service
    Then the rule error message shall be passed as response
    Examples:
      | ServiceName  | ExcelFile           | SheetName  |
      | [CAS_Enq_12] | response_query.xlsx | raiseQuery |

  Scenario Outline: Application is at a particular stage and try to raise query from the service when the validation rule is false
    Given user reads data from the excel file "<ExcelFile>" under sheet "<SheetName>" and row 0
    When User hits the responseToQuery "<ServiceName>" service
    Then the rule error message shall be passed as response

    Examples:
      | ServiceName  | ExcelFile           | SheetName     |
      | [CAS_Enq_13] | response_query.xlsx | responseQuery |