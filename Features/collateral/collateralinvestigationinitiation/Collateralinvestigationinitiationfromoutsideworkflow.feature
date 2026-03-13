@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
  @new
Feature:Collateral investigation initiation from outside workflow


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-363
  Scenario:Collateral investigation initiation page validation from outside workflow
    And user open collateral investigation page
    When user open an application to initiate collateral investigation
    Then following below fields should be present
      | Field                       |
      | Collateral ID               |
      | Collateral Number           |
      | Collateral Type             |
      | Collateral Sub Type         |
      | Last Verification Date      |
      | Current Verification Status |


   #FeatureID-ACAUTOCAS-363
  Scenario:Minimize the Collateral Investigation pop up screen
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    When user minimize the Collateral Investigation pop up screen
    Then Collateral Investigation pop up screen should be minimized



   #FeatureID-ACAUTOCAS-363
  Scenario:Maximize the minimize the Collateral Investigation pop up screen
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    And user minimize the Collateral Investigation pop up screen
    When user maximize the minimized Collateral Investigation pop up screen
    Then Collateral Investigation pop up screen should be maximized


 #FeatureID-ACAUTOCAS-363
  Scenario Outline:Close the Collateral Investigation pop up screen with help of <Icon_Button>
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    When user close the Collateral Investigation pop up screen with help of <Icon_Button>
    Then Collateral Investigation pop up screen should be closed
    Examples:
      | Icon_Button  |
      | close icon   |
      | close button |

 #FeatureID-ACAUTOCAS-363
  Scenario:Collateral investigation initiation pop up screen validation
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    When user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    Then following below fields should be present in yellow ribbon
      | Field               |
      | Collateral Number   |
      | Collateral Type     |
      | Collateral Sub Type |


  #FeatureID-ACAUTOCAS-363
  Scenario Outline:Collateral investigation initiation for verification
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    And user selects verification type as "<VerificationType>"
    And user selects verification agency
    When user initiate verification for collateral investigation
    Then Collateral investigation initiation for verification should be initiated successfully
    Examples:
      | VerificationType   |
      | Legal Verification |

     #FeatureID-ACAUTOCAS-363
  Scenario:Collateral investigation initiation for verification with multiple verification type
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    And user add multiple verification type
    When user initiate verification for collateral investigation with multiple verification type
    Then Collateral investigation initiation for verification should be initiated successfully


     #FeatureID-ACAUTOCAS-363
  Scenario:Delete the added verification type in collateral investigation initiation for verification
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    And user add multiple verification type
    When user deletes the added verification type
    Then verification type should be deleted successfully

     #FeatureID-ACAUTOCAS-363
  Scenario Outline:Show history after initiating collateral investigation initiation
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
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
      | VerificationType   |
      | Legal Verification |

   #FeatureID-ACAUTOCAS-363
  Scenario Outline:Verify columns of history grid in collateral investigation initiation
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
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
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-363
  Scenario:Current Verification Status validation before initiating collateral investigation initiation
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    When user clicks on initiate valuation verification button
    Then Current Verification Status should be present as Verification Not Initiated


 #FeatureID-ACAUTOCAS-363
  Scenario:Current Verification Status validation after initiating collateral investigation initiation
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    When user clicks on initiate valuation verification button
    And user initiate the collateral investigation verification
    Then Current Verification Status should be present as Verification Initiated




    #FeatureID-ACAUTOCAS-363
  Scenario Outline:Collateral investigation initiation for valuation
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation valuation button
    And user selects valuation type as "<ValuationType>"
    And user selects valuation agency
    When user initiate valuation for collateral investigation
    Then Collateral investigation initiation for valuation should be initiated successfully
    Examples:
      | ValuationType    |
      | Empaneled Valuer |
      | New              |
      | Old              |

     #FeatureID-ACAUTOCAS-363
  Scenario:Collateral investigation initiation for valuation with multiple valuation type
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation valuation button
    And user add multiple valuation type
    When user initiate valuation for collateral investigation with multiple valuation type
    Then Collateral investigation initiation for valuation should be initiated successfully




     #FeatureID-ACAUTOCAS-363
  Scenario:Delete the added valuation type in collateral investigation initiation for valuation
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation valuation button
    And user add multiple valuation type
    When user deletes the added valuation type
    Then valuation type should be deleted successfully

     #FeatureID-ACAUTOCAS-363
  Scenario Outline:Show history after initiating valuation for valuation initiation
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
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
      | ValuationType    |
      | Empaneled Valuer |
      | New              |
      | Old              |

  #FeatureID-ACAUTOCAS-363
  Scenario Outline:Verify columns of history grid in collateral valuation initiation
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
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
      | ValuationType    |
      | Empaneled Valuer |
      | New              |
      | Old              |


    #FeatureID-ACAUTOCAS-363
  Scenario:Collateral investigation initiation for verification with same verification type having different agencies
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    And user add duplicate verification type having different agencies
    When user initiate verification for collateral investigation with duplicate verification type having different agencies
    Then Collateral investigation initiation for verification should be initiated successfully


      #FeatureID-ACAUTOCAS-363
  Scenario:Collateral investigation initiation for verification with same verification type having same agencies
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    And user add duplicate verification type having having same agencies
    When user initiate verification for collateral investigation with duplicate verification type having same agencies
    Then Collateral investigation initiation should not be initiated with duplicate verification error

#FeatureID-ACAUTOCAS-363
  Scenario Outline:Collateral investigation initiation for verification without filling <MandatoryField>
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    When user fill all fields except "<MandatoryField>" field in collateral investigation initiation
    And user initiate verification for collateral investigation
    Then collateral investigation initiation should not be initiated with an error message
    Examples:
      | MandatoryField    |
      | Verification Type |
      | Agency            |

    #FeatureID-ACAUTOCAS-363
  Scenario Outline:Initiating collateral investigation for verification with inactive agency
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    And user selects verification type as "<VerificationType>"
    When user clicks on verification agency
    Then inactive agency should not be visible in agency dropdown
    Examples:
      | VerificationType   |
      | Legal Verification |

     #FeatureID-ACAUTOCAS-363
  Scenario Outline:Validate collateral investigation initiated application at next stage CIV from <ApplicationStage> in application manager of <ProductType> application
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate valuation verification button
    And user selects verification type as "<VerificationType>"
    And user selects verification agency
    And user initiate verification for collateral investigation
    And user open application manager
    When user checks collateral investigation initiated application
    Then application should be present at next stage CIV
    Examples:
      | VerificationType   |
      | Legal Verification |


  #FeatureID-ACAUTOCAS-363
  Scenario:Collateral investigation initiation for valuation with same valuation type having different agencies
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate verification valuation button
    And user add duplicate valuation type having different agencies
    When user initiate valuation for collateral investigation with duplicate valuation type having different agencies
    Then Collateral investigation initiation for valuation should be initiated successfully


      #FeatureID-ACAUTOCAS-363
  Scenario:Collateral investigation initiation for valuation with same valuation type having same agencies
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate verification valuation button
    And user add duplicate valuation type having having same agencies
    When user initiate valuation for collateral investigation with duplicate valuation type having same agencies
    Then Collateral investigation initiation should not be initiated with duplicate valuation error




     #FeatureID-ACAUTOCAS-363
  Scenario Outline:Collateral investigation initiation for valuation without filling <MandatoryField>
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate verification valuation button
    When user fill all fields except "<MandatoryField>" field in collateral investigation initiation
    And user initiate valuation for collateral investigation
    Then collateral investigation initiation should not be initiated with an error message
    Examples:
      | MandatoryField    |
      | Verification Type |
      | Agency            |

    #FeatureID-ACAUTOCAS-363
  Scenario Outline:Initiating collateral investigation for valuation with inactive agency
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate verification valuation button
    And user selects valuation type as "<ValuationType>"
    When user clicks on valuation agency
    Then inactive agency should not be visible in agency dropdown
    Examples:
      | ValuationType    |
      | Empaneled Valuer |
      | New              |
      | Old              |

     #FeatureID-ACAUTOCAS-363
  Scenario Outline:Validate collateral valuation initiated application at next stage CIV from CII in application manager
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user clicks on initiate verification valuation button
    And user selects valuation type as "<ValuationType>"
    And user selects valuation agency
    And user initiate valuation for collateral investigation
    And user open application manager
    When user checks collateral investigation initiated application
    Then application should be present at next stage CIV
    Examples:
      | ValuationType    |
      | Empaneled Valuer |
      | New              |
      | Old              |

