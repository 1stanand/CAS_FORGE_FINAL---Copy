#@Epic-VAP
#@AuthoredBy-sajja.ravikumar
##OriginalAuthor-rajni.gola
#@ReviewedBy-
#@ImplementedBy-
#@TechReviewedBy-
#@NotImplemented
#
#Feature: Generate Repayment Schedule for Insurance Category
#
#  Background:
#    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
#
#  #FeatureID-ACAUTOCAS-211
#  Scenario Outline: View VAP Repayment Schedule at "<Var_Stage>" for vap type "<VAP_Type>" with vap treatment "<VAP_Treatment>"
#    And user open an application at "<Var_Stage>" Stage
#    And user navigates to "<Opening_Link>"
#    And user expands "VAP Details" accordion
#    And user enters data from workbook "VAPRepaymentValidate.xlsx" under sheet "repay_param" for row number "<RepayParamRowNumber>"
#    When user clicks on "view hyperlink under Repayment Schedule column"
#    Then user should be able to view "VAP Repayment Schedule" in a separate popup window
#    Examples:
