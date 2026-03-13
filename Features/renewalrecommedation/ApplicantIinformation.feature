@Epic-RenewalAndRenewalRecom
@AuthoredBy-narendra.tiwari
@ReviewedBy-
@TechReviewedBy-
@NotImplemented

Feature: Renewal Applicant Information

  Background:
    Given User is logged in CAS with "<SourceDataFile>" under "<SheetName>" and "<RowNumber>"
    And   User selects Loan application at App Update Recommendation Stage
#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: Personal information should be open
    When user select view details hyper link
    And  Application at <ApplicationStage> in <ProductType>
    And  user selects Applicant view View Details from Applicant information screen
    And  user able to click to  view details
    Then Personal information should be open
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:  Application at <ApplicationStage> in <ProductType>
    When user at personal information of <ApplicationStage> in <ProductType>
    And  user able to view all fields in personal details screen
    Then All fields should be non editable mode in personal information screen
      | All Fields                 |
      | Host ID                    |
      | Applicant's gender         |
      | Salutation                 |
      | First Name                 |
      | Middle Name                |
      | Last Name                  |
      | Alais Name                 |
      | Full Name                  |
      | Mother's Maiden Name       |
      | Guardian Name              |
      | Maiden Salutation          |
      | Maiden First Name          |
      | Maiden Middle Name         |
      | Maiden Last Name           |
      | Date of Birth              |
      | Age                        |
      | Is Minor                   |
      | Place of Birth             |
      | Marital Status             |
      | Constitution               |
      | Nationality                |
      | Resident Type              |
      | Category                   |
      | Segment                    |
      | Religion                   |
      | Group Name                 |
      | Sub Group Name             |
      | Person with Disability     |
      | Applicant Profile          |
      | TAN Number                 |
      | Promoter Contribution      |
      | Relationship With Employee |
      | Identification Details     |
      | Address Details            |
      | Communication details      |
      | Family Details             |
      | Education Details          |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |



    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: Verify all mandtaory fileds in personal information screen in non-editable mode
    When user at personal infromation <ApplicationStage>  <ProductType>
    And  user able to view all fields in personal details screen
    Then Verify all mandtaory fileds in personal information screen in non-editable mode
      | All Fields                 |
      |Applicant's Gender          |
      | Salutation                 |
      |First Name                  |
      |Last Name                   |
      |Full Name                   |
      |Date of Birth               |
      |Marital Status              |
      |Constitution                |
      |Nationality                 |
      |Resident Type               |
      |Resident Type               |
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:   OpenPersonal information should be open with required fields
    When User at personal information  <ApplicationStage>  <ProductType>
    And  User select the required field
    Then Personal information should be open with required fields
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:   Verify non-mandatory field should not available
    When User at personal information <ApplicationStage>  <ProductType>
    And  User select the required field
    And  User able to view all the fields
    Then Verify non-mandatory field should not available
   |Field Name|
  |Middle Name|
  |Alias Name|
  |Mother's Mai|
  |Guardian Nam|
  |Maiden Salut|
  |Maiden First|
  |Maiden Middl|
  |Maiden Last |
  |Age(years)  |
  |Place of Bir|
  |Segment     |
  |Religion|
  |Group Name|
  |Sub Group Na|
  |Person with |
  |Applicant Pr|
  |TAN Number  |
  |Promoter Con|
  |Relationship|
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

#--------Update Applicant-----

  #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: Personal information should be open at <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When user select view details hyper link
    And user selects Applicant view from Applicant information screen
    And user able to click to  view details
    Then  Personal information should be open
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:   Plus button should be in enable mode
    Given user selects Loan application at App Update Recommendation Stage <ApplicationStage>  <ProductType>
    When user select view details hyper link
    And user at personal infromation
    And user able to click plus button
    Then  Plus button should be in enable mode

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: New address window should be open successfully  add the new address <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When user select view details hyper link
    And user at personal infromation
    And  Click to add button
    Then  New address window should be open successfully  add the new address

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:   Add_Copy from an existing Address hyper link should be visible <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When user select view details hyper link
    And  user at personal infromation
    And  Click to add button to add new address
    And  New address window should be open successfully
    Then Add_Copy from an existing Address hyper link should be visible

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:  Add Copy from an existing Address hyper link should be visible <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When user select view details hyper link
    And  user at personal infromation
    And  Click to add button to add new address
    And  New address window should be open successfully
    Then Add/Copy from an existing Address hyper link should be visible

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: Add copy existing Address at <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When  user at personal infromation
    And   Click to add button to add new address
    And   New address window should be open successfully
    And   Click to Add_Copy from an existing Address hyper link
    Then  Add copy existing Address

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: User should be able to edit or update any address <ApplicationStage>  <ProductType>
    Given User selects Loan application at App Update Recommendation Stage
    When User at personal infromation
    And  Click to edit button to edit any address
    Then User should be able to edit update any address

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: User should be able to delete any address <ApplicationStage>  <ProductType>
    Given User selects Loan application at App Update Recommendation Stage
    When User at personal infromation
    And Click to delete button
    Then User should be able to delete any address

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: User should be able to add any address <ApplicationStage>  <ProductType>
    Given User selects Loan application at App Update Recommendation Stage
    When User at personal infromation
    And Add another type address
    Then User should be able to add any address
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:   Check for dedupe should be executed successfully <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When user at personal infromation
    And  user click to check for deplicates button
    Then Check for dedupe should be executed successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:  user should be able to update Is Primary Address <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When user at personal infromation
    And Click to communication details
    Then user should be able to update Is Primary Address
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:  Communication Details should be updated successfully
    Given user selects Loan application at App Update Recommendation Stage
    When add data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then Communication Details should be updated successfully

    Examples:
      | SourceFile            | SheetName            | rownum |
      | Communication_atddxls | Update_communication | 0      |
      | Communication_atddxls | Update_communication | 1      |
      | Communication_atddxls | Update_communication | 2      |
      | Communication_atddxls | Update_communication | 3      |
      | Communication_atddxls | Update_communication | 4      |
      | Communication_atddxls | Update_communication | 5      |
      | Communication_atddxls | Update_communication | 6      |
      | Communication_atddxls | Update_communication | 7      |
      | Communication_atddxls | Update_communication | 8      |
      | Communication_atddxls | Update_communication | 9      |
      | Communication_atddxls | Update_communication | 10     |
      | Communication_atddxls | Update_communication | 11     |
      | Communication_atddxls | Update_communication | 12     |
      | Communication_atddxls | Update_communication | 13     |
      | Communication_atddxls | Update_communication | 14     |
      | Communication_atddxls | Update_communication | 15     |
      | Communication_atddxls | Update_communication | 16     |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: user should be able to Click to allow Allow Promotional Calls <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When user at personal infromation
    And Click to communication details
    Then user should be able to Click to allow Allow Promotional Calls
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |
#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: user should be able to delete all the family details <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When user at personal infromation
    And Click to Family details
    And Delete the Already added family details
    Then user should be able to delete all the family details
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:  Family Details should be updated successfully
    Given user selects Loan application at App Update Recommendation Stage
    When add data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then Family Details should be updated successfully

    Examples:
      | SourceFile            | SheetName | rownum |
      | Communication_atddxls | Family    | 0      |
      | Communication_atddxls | Family    | 1      |
      | Communication_atddxls | Family    | 2      |
      | Communication_atddxls | Family    | 3      |
      | Communication_atddxls | Family    | 4      |
      | Communication_atddxls | Family    | 5      |
      | Communication_atddxls | Family    | 6      |
      | Communication_atddxls | Family    | 7      |
      | Communication_atddxls | Family    | 8      |
      | Communication_atddxls | Family    | 9      |
      | Communication_atddxls | Family    | 10     |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario:   user should be able to delete the family details
    Given user selects Loan application at App Update Recommendation Stage
    When user at personal infromation
    And Click to Family details
    And Delete the new added family details
    Then user should be able to delete the family details

#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: user should be able to delete the Education details
    Given user selects Loan application at App Update Recommendation Stage <ApplicationStage>  <ProductType>
    When user at personal infromation
    And Click to Education details
    And Delete the Already add Education details
    Then user should be able to delete the Education details
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:  Education Details should be updated successfully
    Given user selects Loan application at App Update Recommendation Stage
    When add data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then Education Details should be updated successfully

    Examples:
      | SourceFile            | SheetName | rownum |
      | Communication_atddxls | Education | 0      |
      | Communication_atddxls | Education | 1      |
      | Communication_atddxls | Education | 2      |
      | Communication_atddxls | Education | 3      |
      | Communication_atddxls | Education | 4      |
      | Communication_atddxls | Education | 5      |
      | Communication_atddxls | Education | 6      |
      | Communication_atddxls | Education | 7      |
      | Communication_atddxls | Education | 8      |

#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: user should be able to update the Education details <ApplicationStage>  <ProductType>
    Given user selects Loan application at App Update Recommendation Stage
    When user at personal infromation
    And Click to Education details
    And Delete the new added Education details
    Then user should be able to update the Education details

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |
      | <ProductType> | <ApplicationStage> |

    ##Employement
#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  # Saleried occupation details
  Scenario: Add Occupation Type field should be disable mode
    Given user selects Loan application at App Update Recommendation Stage
    When user at personal information
    And Click to Employment details
    And Click to edit button for already added employment
    Then Add Occupation Type field should be disable mode

#FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario: Occupation code should be updated successfully
    Given user selects Loan application at App Update Recommendation Stage
    When user at Employment detail screen
    And Click to edit button for already added employment
    And Change Occupation Code
    And Click to done button
    Then Occupation code should be updated successfully

    #FeatureID-ACAUTOCAS-10934
# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline: Saleried occupation Details should be updated successfully
    Given user selects Loan application at App Update Recommendation Stage
    When add data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then Saleried occupation Details should be updated successfully

    Examples:
      | SourceFile            | SheetName                   | rownum |
      | Communication_atddxls | Updated Saleried Occupation | 0      |
      | Communication_atddxls | Updated Saleried Occupation | 1      |
      | Communication_atddxls | Updated Saleried Occupation | 2      |
      | Communication_atddxls | Updated Saleried Occupation | 3      |
      | Communication_atddxls | Updated Saleried Occupation | 4      |
      | Communication_atddxls | Updated Saleried Occupation | 5      |
      | Communication_atddxls | Updated Saleried Occupation | 6      |
      | Communication_atddxls | Updated Saleried Occupation | 7      |
      | Communication_atddxls | Updated Saleried Occupation | 8      |
      | Communication_atddxls | Updated Saleried Occupation | 9      |
      | Communication_atddxls | Updated Saleried Occupation | 10     |
      | Communication_atddxls | Updated Saleried Occupation | 11     |
      | Communication_atddxls | Updated Saleried Occupation | 12     |
      | Communication_atddxls | Updated Saleried Occupation | 13     |
      | Communication_atddxls | Updated Saleried Occupation | 14     |
      | Communication_atddxls | Updated Saleried Occupation | 15     |

# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario: Add Agriculture occupation details
    Given user selects Loan application at App Update Recommendation Stage
    When user at Employment detail screen
    And Click to plus button
    And Change Occupation Code
    And Click to done button
    Then Add Agriculture occupation details


# ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario Outline:  Agriculture occupation Details should be updated successfully
    Given user selects Loan application at App Update Recommendation Stage
    When add data from workbook "<SourceFile>" under sheet name in "<SheetName>" and row number as "<rownum>" accordingly
    Then Agriculture occupation Details should be updated successfully

    Examples:
      | SourceFile            | SheetName           | rownum |
      | Communication_atddxls | Updated Agriculture | 1      |
      | Communication_atddxls | Updated Agriculture | 2      |
      | Communication_atddxls | Updated Agriculture | 3      |
      | Communication_atddxls | Updated Agriculture | 4      |
      | Communication_atddxls | Updated Agriculture | 5      |
      | Communication_atddxls | Updated Agriculture | 6      |
      | Communication_atddxls | Updated Agriculture | 7      |
      | Communication_atddxls | Updated Agriculture | 8      |

 # ${ProductType:["PF","HL","CON_VEH","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Update recommendation stage"]}
  Scenario:   Verify the error message
    Given user selects Loan application at App Update Recommendation Stage
    When user at Employment detail screen
    And Click to Edit button
    And Take occupation is more than applicant age
    And Click to done button
    Then Verify the error message "Total Experience exceeds the age of the customer"


     # $ { ProductType : ["HL","CON_VEH","Farm Equipment","AGRL","PL","EDU"]}
   # ${ApplicationStage:["Update recommendation"]}
  Scenario Outline:  erify the fields in un-editabel
    Given user selects Loan application at App Update Recommendation Stage
    When user at Employment detail screen
    And Click to Edit button
    Then Verify the fields in un-editabel<Field-Name> fields
    Examples:
      | Field-Name          |
      | Add Occupation Type |
      | Occupation Code     |
      | Profession          |
      | Description         |



