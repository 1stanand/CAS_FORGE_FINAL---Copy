@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
  @new
Feature:Collateral investigation initiation


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation page validation
    When user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    Then following below fields should be present
      | Field                       |
      | Collateral ID               |
      | Collateral Number           |
      | Collateral Type             |
      | Collateral Sub Type         |
      | Last Verification Date      |
      | Current Verification Status |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

   #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Minimize the Collateral Investigation pop up screen at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    When user minimize the Collateral Investigation pop up screen
    Then Collateral Investigation pop up screen should be minimized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


   #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Maximize the minimize the Collateral Investigation pop up screen at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user minimize the Collateral Investigation pop up screen
    When user maximize the minimized Collateral Investigation pop up screen
    Then Collateral Investigation pop up screen should be maximized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Close the Collateral Investigation pop up screen with help of <Icon_Button> at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    When user close the Collateral Investigation pop up screen with help of <Icon_Button>
    Then Collateral Investigation pop up screen should be closed
    Examples:
      | Icon_Button  | ApplicationStage   | ProductType   |
      | close icon   | <ApplicationStage> | <ProductType> |
      | close button | <ApplicationStage> | <ProductType> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation pop up screen validation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    When user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    Then following below fields should be present in yellow ribbon
      | Field               |
      | Collateral Number   |
      | Collateral Type     |
      | Collateral Sub Type |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user selects verification type as "<VerificationType>"
    And user selects verification agency
    When user initiate verification for collateral investigation
    Then Collateral investigation initiation for verification should be initiated successfully
    Examples:
      | ProductType   | ApplicationStage   | VerificationType   |
      | <ProductType> | <ApplicationStage> | Legal Verification |

     #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for verification with multiple verification type at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user add multiple verification type
    When user initiate verification for collateral investigation with multiple verification type
    Then Collateral investigation initiation for verification should be initiated successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Delete the added verification type in collateral investigation initiation for verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user add multiple verification type
    When user deletes the added verification type
    Then verification type should be deleted successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Show history after initiating collateral investigation initiation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user selects verification type as "<VerificationType>"
    And user selects verification agency
    When user initiate verification for collateral investigation
    And user clicks on show history
    Then following below fields should be present with correct filled data in history grid
      | Field             |
      | Verification Type |
      | Agency            |
      | Date              |
    Examples:
      | ProductType   | ApplicationStage   | VerificationType   |
      | <ProductType> | <ApplicationStage> | Legal Verification |

   #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Verify columns of history grid in collateral investigation initiation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user selects verification type as "<VerificationType>"
    And user selects verification agency
    When user initiate verification for collateral investigation
    And user clicks on show history
    Then following column should be present in history grid
      | Field              |
      | Verification Type  |
      | Agency             |
      | Date               |
      | Linked Application |
      | Status             |
    Examples:
      | ProductType   | ApplicationStage   | VerificationType   |
      | <ProductType> | <ApplicationStage> | Legal Verification |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Current Verification Status validation before initiating collateral investigation initiation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    When user clicks on initiate valuation verification button
    Then Current Verification Status should be present as Verification Not Initiated
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Current Verification Status validation after initiating collateral investigation initiation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    When user clicks on initiate valuation verification button
    And user initiate the collateral investigation verification
    Then Current Verification Status should be present as Verification Initiated
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

#  Waive off :

     #FeatureID-ACAUTOCAS-363
    #${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral ID validation in Waiving Off Verification modal at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    When user clicks on Waive Off Valuation_Verification
    Then a modal should be open for Waiving Off Verification with correct Collateral ID
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Reason Description validation in Waiving Off Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off Valuation_Verification
    When user fills Reason Code with "<Code>"
    Then Reason Description should be "<FieldNature>"
    Examples:
      | ProductType   | ApplicationStage   | Code              | FieldNature  |
      | <ProductType> | <ApplicationStage> | any listed reason | non editable |
      | <ProductType> | <ApplicationStage> | other             | editable     |

    #FeatureID-ACAUTOCAS-363
   #${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Add <NoOfReasons> reason in in Waiving Off Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off Valuation_Verification
    When user add <NoOfReasons> reason
    Then <NoOfReasons> reason should be added successfully
    Examples:
      | NoOfReasons | ProductType   | ApplicationStage   |
      | single      | <ProductType> | <ApplicationStage> |
      | multiple    | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Delete the added reason in Waiving Off Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off Valuation_Verification
    And user add the reason
    When user delete the added reasons
    Then reasons should be deleted successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Duplicate reason code not allowed in Waiving Off Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off Valuation_Verification
    When user add the reason with duplicate reason code
    Then a error occurred as Duplicate WaiveOff
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Reason Description field validation in Waiving Off Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off Valuation_Verification
    When user fills Reason Description field with "<Characters>" characters
    Then "<Left_Characters>" characters should be remaining to fill in Reason Description field
    Examples:
      | ProductType   | ApplicationStage   | Characters | Left_Characters |
      | <ProductType> | <ApplicationStage> | 55         | 200             |
      | <ProductType> | <ApplicationStage> | 100        | 155             |
      | <ProductType> | <ApplicationStage> | 255        | 0               |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Waive Off verification in collateral investigation initiation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off Valuation_Verification
    When user add the reason Waive Off Valuation_Verification
    Then verification should be waived off successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Reason Description validation in Waiving Off All Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off All button
    When user fills Reason Code with "<Code>"
    Then Reason Description should be "<FieldNature>"
    Examples:
      | ProductType   | ApplicationStage   | Code              | FieldNature  |
      | <ProductType> | <ApplicationStage> | any listed reason | non editable |
      | <ProductType> | <ApplicationStage> | other             | editable     |

    #FeatureID-ACAUTOCAS-363
   #${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Add <NoOfReasons> reason in Waiving Off All Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off All button
    When user add <NoOfReasons> reason
    Then <NoOfReasons> reason should be added successfully
    Examples:
      | NoOfReasons | ProductType   | ApplicationStage   |
      | single      | <ProductType> | <ApplicationStage> |
      | multiple    | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Delete the added reason in Waiving Off All Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off All button
    And user add the reason
    When user delete the added reasons
    Then reasons should be deleted successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Duplicate reason code not allowed in Waiving Off All Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off All button
    When user add the reason with duplicate reason code
    Then a error occurred as Duplicate WaiveOff
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

 #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Reason Description field validation in Waiving Off All Verification at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off All button
    When user fills Reason Description field with "<Characters>" characters
    Then "<Left_Characters>" characters should be remaining to fill in Reason Description field
    Examples:
      | ProductType   | ApplicationStage   | Characters | Left_Characters |
      | <ProductType> | <ApplicationStage> | 55         | 200             |
      | <ProductType> | <ApplicationStage> | 100        | 155             |
      | <ProductType> | <ApplicationStage> | 255        | 0               |

   #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Waive Off All verifications in collateral investigation initiation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And  user clicks on Waive Off All button
    When user add the reason Waive Off Valuation_Verification
    Then all verifications should be waived off successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

      #FeatureID-ACAUTOCAS-363
    #${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Application ID validation in Waiving Off Verification modal at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    When  user clicks on Waive Off All button
    Then a modal should be open for Waiving Off Verification with correct Application ID
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


# valuation

    #FeatureID-ACAUTOCAS-363
    # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for valuation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation valuation button
    And user selects valuation type as "<ValuationType>"
    And user selects valuation agency
    When user initiate valuation for collateral investigation
    Then Collateral investigation initiation for valuation should be initiated successfully
    Examples:
      | ProductType   | ApplicationStage   | ValuationType    |
      | <ProductType> | <ApplicationStage> | Empaneled Valuer |
      | <ProductType> | <ApplicationStage> | New              |
      | <ProductType> | <ApplicationStage> | Old              |

     #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for valuation with multiple valuation type at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation valuation button
    And user add multiple valuation type
    When user initiate valuation for collateral investigation with multiple valuation type
    Then Collateral investigation initiation for valuation should be initiated successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Delete the added valuation type in collateral investigation initiation for valuation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation valuation button
    And user add multiple valuation type
    When user deletes the added valuation type
    Then valuation type should be deleted successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Show history after initiating valuation for valuation initiation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation valuation button
    And user selects valuation type as "<ValuationType>"
    And user selects valuation agency
    And user initiate valuation for collateral investigation
    And user clicks on show history
    When user clicks hyperlink under status column
    Then following below fields should be present with correct filled data in history grid
      | Field            |
      | Valuation Agency |
      | Valuation Date   |
    Examples:
      | ProductType   | ApplicationStage   | ValuationType    |
      | <ProductType> | <ApplicationStage> | Empaneled Valuer |
      | <ProductType> | <ApplicationStage> | New              |
      | <ProductType> | <ApplicationStage> | Old              |

  #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Verify columns of history grid in collateral valuation initiation at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation valuation button
    And user selects valuation type as "<ValuationType>"
    And user selects valuation agency
    And user initiate valuation for collateral investigation
    And user clicks on show history
    When user clicks hyperlink under status column
    Then following column should be present in history grid
      | Field             |
      | Valuation Agency  |
      | Evaluated By      |
      | Evaluation Method |
      | Valuation Date    |
      | Evaluated Value   |
      | Status            |
    Examples:
      | ProductType   | ApplicationStage   | ValuationType    |
      | <ProductType> | <ApplicationStage> | Empaneled Valuer |
      | <ProductType> | <ApplicationStage> | New              |
      | <ProductType> | <ApplicationStage> | Old              |

#     verification after review comments

    #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for verification with same verification type having different agencies at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user add duplicate verification type having different agencies
    When user initiate verification for collateral investigation with duplicate verification type having different agencies
    Then Collateral investigation initiation for verification should be initiated successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

      #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for verification with same verification type having same agencies at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user add duplicate verification type having having same agencies
    When user initiate verification for collateral investigation with duplicate verification type having same agencies
    Then Collateral investigation initiation should not be initiated with duplicate verification error
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

#FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for verification without filling <MandatoryField> at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    When user fill all fields except "<MandatoryField>" field in collateral investigation initiation
    And user initiate verification for collateral investigation
    Then collateral investigation initiation should not be initiated with an error message
    Examples:
      | ProductType   | ApplicationStage   | MandatoryField    |
      | <ProductType> | <ApplicationStage> | Verification Type |
      | <ProductType> | <ApplicationStage> | Agency            |

    #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Initiating collateral investigation for verification with inactive agency at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user selects verification type as "<VerificationType>"
    When user clicks on verification agency
    Then inactive agency should not be visible in agency dropdown
    Examples:
      | ProductType   | ApplicationStage   | VerificationType   |
      | <ProductType> | <ApplicationStage> | Legal Verification |

     #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Validate collateral investigation initiated application at next stage CIV from <ApplicationStage> in application manager of <ProductType> application
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate valuation verification button
    And user selects verification type as "<VerificationType>"
    And user selects verification agency
    And user initiate verification for collateral investigation
    And user open application manager
    When user checks collateral investigation initiated application
    Then application should be present at next stage CIV
    Examples:
      | ProductType   | ApplicationStage   | VerificationType   |
      | <ProductType> | <ApplicationStage> | Legal Verification |

#    valuation

  #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for valuation with same valuation type having different agencies at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate verification valuation button
    And user add duplicate valuation type having different agencies
    When user initiate valuation for collateral investigation with duplicate valuation type having different agencies
    Then Collateral investigation initiation for valuation should be initiated successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

      #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for valuation with same valuation type having same agencies at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate verification valuation button
    And user add duplicate valuation type having having same agencies
    When user initiate valuation for collateral investigation with duplicate valuation type having same agencies
    Then Collateral investigation initiation should not be initiated with duplicate valuation error
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Collateral investigation initiation for valuation without filling <MandatoryField> at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate verification valuation button
    When user fill all fields except "<MandatoryField>" field in collateral investigation initiation
    And user initiate valuation for collateral investigation
    Then collateral investigation initiation should not be initiated with an error message
    Examples:
      | ProductType   | ApplicationStage   | MandatoryField    |
      | <ProductType> | <ApplicationStage> | Verification Type |
      | <ProductType> | <ApplicationStage> | Agency            |

    #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Initiating collateral investigation for valuation with inactive agency at <ApplicationStage> in <ProductType>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate verification valuation button
    And user selects valuation type as "<ValuationType>"
    When user clicks on valuation agency
    Then inactive agency should not be visible in agency dropdown
    Examples:
      | ProductType   | ApplicationStage   | ValuationType    |
      | <ProductType> | <ApplicationStage> | Empaneled Valuer |
      | <ProductType> | <ApplicationStage> | New              |
      | <ProductType> | <ApplicationStage> | Old              |

     #FeatureID-ACAUTOCAS-363
   # ${ ProductType : ["IHF","IPF","PF","MAL","HL","LAP","CV","MHL","FE","EDU","AGRL","CEQ","MULF","BD","CashCred","BL","LC","BG"]}
    # ${ApplicationStage:["Collateral Investigation Initiation"]}
  Scenario Outline:Validate collateral valuation initiated application at next stage CIV from <ApplicationStage> in application manager of <ProductType> application
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>"
    And user clicks on initiate verification valuation button
    And user selects valuation type as "<ValuationType>"
    And user selects valuation agency
    And user initiate valuation for collateral investigation
    And user open application manager
    When user checks collateral investigation initiated application
    Then application should be present at next stage CIV
    Examples:
      | ProductType   | ApplicationStage   | ValuationType    |
      | <ProductType> | <ApplicationStage> | Empaneled Valuer |
      | <ProductType> | <ApplicationStage> | New              |
      | <ProductType> | <ApplicationStage> | Old              |

