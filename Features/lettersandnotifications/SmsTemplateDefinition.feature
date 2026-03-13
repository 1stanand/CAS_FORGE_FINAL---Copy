@Epic-LettersAndNotification
@AuthoredBy-anshul.kant
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@MasterRegression
@NotImplemented

Feature: SMS Notification Template

  Background:
    Given user is logged in CAS
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10763
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[]}

  Scenario Outline: MAS-SRQ-200: Validate mandatory columns in the grid
    When User open Notification Master screen
    Then Validate columns in the grid from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"


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
#FeatureID-ACAUTOCAS-10763
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[]}

  Scenario Outline: MAS-SRQ-200: Validate SMS Notification Delivery
    Given Sms Template is maintained with customized Subject in Notification Master
    When User send Sms notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    Then Sms is delivered to the user

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType |
      | Letter.xlsx           | Letter      | 0         |            |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10763
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[]}

  Scenario Outline: MAS-SRQ-200: Validate Subject in Sms
    Given SMs Template is maintained with customized Subject in Notification Master
    When User send sms notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And sms is delivered to the user
    Then Validate subject of the sms and should be same as maintained

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType |
      | Letter.xlsx           | Letter      | 0         |            |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10763
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[]}

  Scenario Outline: MAS-SRQ-200: Validate Body in sms
    Given sms Template is maintained with customized body in Notification Master
    When User send sms notification for letters for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And sms is delivered to the user
    Then Validate body of the sms and should be same as maintained

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType |
      | Letter.xlsx           | Letter      | 0         |            |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10763
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[]}

  Scenario Outline: MAS-SRQ-200: Validate Sms Notification Delivery when template is maintained on Server
    Given Sms Template is maintained only on Server
    When User send Sms notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    Then Sms is delivered to the user

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType |
      | Letter.xlsx           | Letter      | 0         |            |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10763
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[]}

  Scenario Outline: MAS-SRQ-200: Validate Subject in sms when template is maintained on Server
    Given sms Template is maintained only on Server
    When User send sms notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And sms is delivered to the user
    Then Validate subject of the sms and should be same as maintained on server

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType |
      | Letter.xlsx           | Letter      | 0         |            |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10763
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[]}

  Scenario Outline: MAS-SRQ-200: Validate Body in sms when template is maintained on Server
    Given sms Template is maintained only on Server
    When User send sms notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And sms is delivered to the user
    Then Validate body of the sms and should be same as maintained on server

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType |
      | Letter.xlsx           | Letter      | 0         |            |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10763
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:[]}

  Scenario Outline: MAS-SRQ-200: Validate Sms when Template is not maintained
    Given Sms Template is not maintained on Server and notification master both
    When User send Sms notification for "<LetterType>" from "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    Then There should be a validation of Email not sent

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType |
      | Letter.xlsx           | Letter      | 0         |            |
