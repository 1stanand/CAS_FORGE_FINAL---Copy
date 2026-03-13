@Epic-LettersAndNotification
@AuthoredBy-anshul.kant
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented

Feature: Communication With Attachment

  Background:
    Given user is logged in CAS
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10759
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[]}


  Scenario Outline: Validate mandatory columns in the grid
    Given Notification Master
    When user open Notification Master screen
    Then validate columns in the grid from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"

      | FieldName               | Mandatory |
      | Notification Code       | Yes       |
      | Notification Name       | No        |
      | Notification Type       | N0        |
      | Users                   | No        |
      | Notification            | No        |
      | Created By              | No        |
      | Reviewed By             | No        |
      | Status                  | No        |
      | Active/Inactive         | No        |
      | Created On              | No        |
      | Updated On              | No        |
      | Reviewed On             | No        |

    Examples:
      | SourceDataFile        | SheetName   | RowNumber |
      | Letter.xlsx           | Letter      | 0         |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10759
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["LEAD_DETAILS","DDE","DISBURSAL","RECOMMENDATION"]}

  Scenario Outline: Validate Email Notification Delivery for <LetterType> KFS
    Given Email Template is maintained with customized Subject and attached file in Notification Master
    When User send email notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    Then Email is delivered to the user along with the attachment

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType     |
      | Letter.xlsx           | Letter      | 0         | Key Fact Sheet |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10759
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["LOGIN ACCEPTANCE","LEAD_DETAILS","FII","KYC","DDE","CREDIT_APPROVAL","POST_APPROVAL","DISBURSAL","RECOMMENDATION"]}

  Scenario Outline: Validate Email Notification Delivery for <LetterType> CAM
    Given Email Template is maintained with customized Subject and attached file in Notification Master
    When User send email notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    Then Email is delivered to the user along with the attachment

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType     |
      | Letter.xlsx           | Letter      | 0         | CAM            |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10759
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["POST_APPROVAL","DISBURSAL","RECONSIDERATION"]}

  Scenario Outline: Validate Email Notification Delivery for <LetterType> Sanction Letter
    Given Email Template is maintained with customized Subject and attached file in Notification Master
    When User send email notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    Then Email is delivered to the user along with the attachment

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType           |
      | Letter.xlsx           | Letter      | 0         | SANCTION LETTER      |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10759
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DISBURSAL","SENT TO OPS"]}

  Scenario Outline: Validate Email Notification Delivery for <LetterType> Disbursal Report
    Given Email Template is maintained with customized Subject and attached file in Notification Master
    When User send email notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    Then Email is delivered to the user along with the attachment

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType       |
      | Letter.xlsx           | Letter      | 0         | DISBURSAL REPORT |



# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10759
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DISBURSAL","SENT TO OPS"]}

  Scenario Outline: Validate Email Notification Delivery for <LetterType> Repayment Schedule
    Given Email Template is maintained with customized Subject and attached file in Notification Master
    When User send email notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    Then Email is delivered to the user along with the attachment

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType         |
      | Letter.xlsx           | Letter      | 0         | REPAYMENT SCHEDULE |

