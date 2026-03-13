@Epic-LettersAndNotification
@AuthoredBy-anshul.kant
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented

Feature: Letter Template

  Background:
    Given user is logged in CAS
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["LEAD_DETAILS","DDE","DISBURSAL","RECOMMENDATION"]}

  Scenario Outline: Validate Template of <LetterType> KFS maintained in Master
    Given Letter Template is maintained in letter template Master
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType     |
      | Letter.xlsx           | Letter      | 0         | Key Fact Sheet |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["LEAD_DETAILS","DDE","DISBURSAL","RECOMMENDATION"]}

  Scenario Outline: Validate Template of <LetterType> KFS maintained on server
    Given Letter Template is maintained only on Server
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType     |
      | Letter.xlsx           | Letter      | 0         | Key Fact Sheet |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["LOGIN ACCEPTANCE","LEAD_DETAILS","FII","KYC","DDE","CREDIT_APPROVAL","POST_APPROVAL","DISBURSAL","RECOMMENDATION"]}

  Scenario Outline: Validate Template of <LetterType> CAM maintained in Master
    Given Letter Template is maintained in letter template Master
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType     |
      | Letter.xlsx           | Letter      | 0         | CAM            |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["LOGIN ACCEPTANCE","LEAD_DETAILS","FII","KYC","DDE","CREDIT_APPROVAL","POST_APPROVAL","DISBURSAL","RECOMMENDATION"]}

  Scenario Outline: Validate Template of <LetterType> CAM maintained on Server
    Given Letter Template is maintained only on Server
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType     |
      | Letter.xlsx           | Letter      | 0         | CAM            |

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["POST_APPROVAL","DISBURSAL","RECONSIDERATION"]}

  Scenario Outline: Validate Template of <LetterType> Sanction Letter maintained in Master
    Given Letter Template is maintained in letter template Master
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType      |
      | Letter.xlsx           | Letter      | 0         | SANCTION LETTER |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["POST_APPROVAL","DISBURSAL","RECONSIDERATION"]}

  Scenario Outline: Validate Template of <LetterType> Sanction Letter maintained on Server
    Given Letter Template is maintained only on Server
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType      |
      | Letter.xlsx           | Letter      | 0         | SANCTION LETTER |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DISBURSAL","SENT TO OPS"]}

  Scenario Outline: Validate Template of <LetterType> Repay Schedule maintained in Master
    Given Letter Template is maintained in letter template Master
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType         |
      | Letter.xlsx           | Letter      | 0         | REPAYMENT SCHEDULE |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DISBURSAL","SENT TO OPS"]}

  Scenario Outline: Validate Template of <LetterType> Repay Schedule maintained on Server
    Given Letter Template is maintained only on Server
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType      |
      | Letter.xlsx           | Letter      | 0         | REPAYMENT SCHEDULE |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DISBURSAL","SENT TO OPS"]}

  Scenario Outline: Validate Template of <LetterType> Disbursal Report maintained in Master
    Given Letter Template is maintained in letter template Master
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType         |
      | Letter.xlsx           | Letter      | 0         | DISBURSAL REPORT   |


# ${CollType:[]}
# ${CollSubType:[]}
###Squash:
###Story:
###Bug:
#FeatureID-ACAUTOCAS-10761
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["DISBURSAL","SENT TO OPS"]}

  Scenario Outline: Validate Template of <LetterType> Disbursal Report maintained on Server
    Given Letter Template is maintained only on Server
    When User Generate "<LetterType>"  from <SourceDataFile> under <SheetName> and <RowNumber>
    And Report is generated
    Then Validate the template of the letter

    Examples:
      | SourceDataFile        | SheetName   | RowNumber | LetterType       |
      | Letter.xlsx           | Letter      | 0         | DISBURSAL REPORT |
