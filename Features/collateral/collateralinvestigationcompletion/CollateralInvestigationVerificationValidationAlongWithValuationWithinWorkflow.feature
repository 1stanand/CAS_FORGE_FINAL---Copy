@Epic-E2E
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
Feature:Collateral verification and valuation validation within workflow


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


#  Pre-Requisite:Application should at Recommendation stage and parallel at Collateral Investigation Investigation

    #FeatureID-ACAUTOCAS-365
   #${ ProductType:["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification check at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    When user open intent indicator accordion
    Then collateral verification should be display as NA
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification details validation at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    Then following column should be present with correct data as filled
      | Column          |
      | Collateral Type |
      | Collateral ID   |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

      #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification status validation at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    Then following column should be present with their correct values
      | Column              | Column_Data   |
      | Verification Status | Not Initiated |
      | Verification Date   | NA            |
      | Valuation Status    | Not Initiated |
      | Valuation Date      | NA            |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

   #Re-Run button should be disable
  
    #Pre-Requisite:Application should at Recommendation stage and parallel at Collateral Investigation Verification

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification check at Recommendation stage after initiating verification along with valuation
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    When user open intent indicator accordion
    Then collateral verification should be display as I
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification status validation at Recommendation stage after initiating verification along with valuation
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    Then following column should be present with their correct values
      | Column              | Column_Data         |
      | Verification Status | Initiated           |
      | Verification Date   | "Verification Date" |
      | Valuation Status    | Initiated           |
      | Valuation Date      | "Valuation Date"    |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


    #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification history validation at Recommendation stage after initiating <Verification_Valuation>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated "<Verification_Valuation>"
    Then following field should be present in yellow ribbon under history
      | Field               |
      | Collateral ID       |
      | Collateral Typ      |
      | Collateral Sub Type |
    Examples:
      | Verification_Valuation |
      | verification           |
      | valuation              |

     #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification history grid data validation at Recommendation stage after initiating verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated verification
    Then following field should be present in history grid with correct data as filled
      | Field              |
      | Verification Type  |
      | Agency             |
      | Date               |
      | Linked Application |
      | Status             |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Recommendation"]}
  Scenario Outline:Minimize the collateral verification history at Recommendation stage after initiating <Verification_Valuation>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated "<Verification_Valuation>"
    When user minimized the history pop up
    Then history pop up should be minimized
    Examples:
      | Verification_Valuation |
      | verification           |
      | valuation              |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Maximize the minimized the collateral verification history at Recommendation stage after initiating <Verification_Valuation>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated "<Verification_Valuation>"
    When user maximize the minimized history pop up
    Then history pop up should be minimized
    Examples:
      | Verification_Valuation |
      | verification           |
      | valuation              |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Close the collateral verification history pop up with the help of <Btn_Icon> at Recommendation stage after initiating <Verification_Valuation>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated "<Verification_Valuation>"
    When user close the collateral verification history pop up with the help of <Btn_Icon>
    Then history pop up should be closed
    Examples:
      | Btn_Icon     | Verification_Valuation |
      | close button | verification           |
      | close icon   | verification           |
      | close button | valuation              |
      | close icon   | valuation              |

#After Verification completion

#Pre-Requisite:Application should at Recommendation stage and parallel at Collateral Investigation Completion

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification check at Recommendation stage after collateral verification completion along with valuation
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    When user open application at recommendation stage
    And user open intent indicator accordion
    Then collateral verification should be display as C
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification status validation at Recommendation stage after collateral verification completion along with valuation
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    Then following column should be present with their correct values
      | Column              | Column_Data |
      | Verification Status | Complete    |
      | Valuation Status    | Complete    |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral Details validation of completed verification at Recommendation stage after collateral verification and valuation completion
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    And user checks the details of completed verification
    Then following field should be present in yellow ribbon under history
      | Field              |
      | Collateral ID      |
      | Collateral Type    |
      | Collateral SubType |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Collateral verification status grid column validation at Recommendation stage after collateral verification and valuation completion
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    And user checks the details of completed verification
    Then following field should be present in history with correct data
      | Field              |
      | Verification Type  |
      | Agency             |
      | Date               |
      | Linked Application |
      | Status as complete |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


   #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Completed verification summary details validation form history at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then following below fields should be present with correct data in yellow ribbon
      | Fields             |
      | Application ID     |
      | Product            |
      | Scheme             |
      | Customer Name      |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Property Address details validation of completed verification form history at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then property address details should be present in collateral investigation verification
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Contact Number validation of completed verification form history at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then Contact Number should be present in collateral investigation verification
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Legal Verification field validation of completed verification summary form history at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then following below fields should be non editable with data as filled in collateral investigation verification
      | Field                        |
      | Search Done                  |
      | EC Search Done               |
      | Remarks                      |
      | Status                       |
      | Received Date                |
      | Search EC Check Findings     |
      | Document Received            |
      | Document Received Date       |
      | Initial Status Query Stage   |
      | Remarks                      |
      | Type Of Property             |
      | Plan Type                    |
      | Final Status                 |
      | Final Document Received Date |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Legal Verification field of completed verification form history at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then following below fields should be non editable with data as filled in collateral investigation verification
      | Field               |
      | Verification Agency |
      | Verification Agent  |
      | Verification Date   |
      | Result              |
      | Remarks             |
      | No. Of Attempts     |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Minimize the completed verification summary form history at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    And user checks the details of completed verification
    When user minimize the completed verification summary
    Then completed verification summary should be minimized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Maximize the minimize the completed verification form history at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    And user minimize the completed verification summary
    When user maximize the minimized completed verification summary
    Then completed verification summary should be maximized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Close the completed verification summary form history with the help of <Icon_Btn> at Recommendation stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    And user checks the details of completed verification
    When user close completed verification summary with the help of <Icon_Btn>
    Then completed verification summary should be closed
    Examples:
      | Icon_Btn |
      | icon     |
      | button   |



    
#  1. if verification is done then legal verification shows as ok but if not done then Legal Verification show as Na, Verification Status-Initiated

#  Pre- requisites:Collateral verification/valuation should be completed parallel application should be at Credit approval stage

   #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Credit Approval"]}
  Scenario Outline:Verification status validation at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    When user open application credit approval stage
    Then legal verification shows as Okay
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

#DBT
    #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Credit Approval"]}
  Scenario Outline:Verification status validation at credit approval stage after initiation of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    When user open application credit approval stage
    Then verification shows as NA
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


 
     #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Credit Approval"]}
  Scenario Outline:Verification status validation at credit approval stage after completion of collateral valuation
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    When user open application credit approval stage
    Then valuation shows as Okay
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

#DBT
    #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Credit Approval"]}
  Scenario Outline:Valuation status validation at credit approval stage after initiation of collateral valuation
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    When user open application credit approval stage
    Then valuation shows as NA
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Credit Approval"]}
  Scenario Outline:CIV detail validation at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    Then a pop up should be display having following column data
      | Column             |
      | Collateral ID      |
      | Agency             |
      | Verification Date  |
      | Linked Application |
      | Result             |
      | View               |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |



   #FeatureID-ACAUTOCAS-365
   #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  Scenario Outline:Hyper link validation of verification at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    Then following below hyperlinks should be present
      | Detail       |
      | Show History |
      | Re-Initiate  |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

   #FeatureID-ACAUTOCAS-365
   #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
#  Application id in case multiple verification
  Scenario Outline:View collateral verification summary of yellow ribbon at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    And user clicks on View
    Then following details should be display in yellow ribbon in Collateral Verification summary
      | Field              |
      | Application ID     |
      | Product            |
      | Scheme             |
      | Customer Name      |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-368
  Scenario Outline:Property Address details validation in collateral verification summary at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    And user clicks on View
    Then property address details should be present in collateral investigation verification
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

   #FeatureID-ACAUTOCAS-368
  Scenario Outline:Contact Number validation validation in collateral verification summary at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    And user clicks on View
    Then Contact Number should be present in collateral investigation verification
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  Scenario Outline:View Legal Verification details in collateral verification summary at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    And user clicks on View
    Then following below fields should be non editable with data as filled in collateral investigation verification
      | Field                        |
      | Search Done                  |
      | EC Search Done               |
      | Remarks                      |
      | Status                       |
      | Received Date                |
      | Search EC Check Findings     |
      | Document Received            |
      | Document Received Date       |
      | Initial Status Query Stage   |
      | Remarks                      |
      | Type Of Property             |
      | Plan Type                    |
      | Final Status                 |
      | Final Document Received Date |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  Scenario Outline:View decision of Legal Verification field in collateral verification summary at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    And user clicks on View
    Then following below fields should be non editable with data as filled in collateral investigation verification
      | Field               |
      | Verification Agency |
      | Verification Agent  |
      | Verification Date   |
      | Result              |
      | Remarks             |
      | No. Of Attempts     |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |




  Scenario Outline:Minimize the collateral verification summary at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    And user clicks on View
    When user minimized the collateral verification summary
    Then collateral verification summary should be minimized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline:Maximize the minimized the collateral verification summary at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    And user clicks on View
    When user maximize the minimized collateral verification summary
    Then collateral verification summary should be minimized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline:Close the collateral verification summary with the help of <Btn_Icon> at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user checks the completed collateral verification details from status
    When user close the completed collateral verification with the help of <Btn_Icon>
    Then history pop up should be closed
    Examples:
      | Btn_Icon     |
      | close button |
      | close icon   |




  #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Recommendation"]}
  Scenario Outline:Validate collateral details under history of collateral verification at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    Then following field should be present in yellow ribbon under history with correct data
      | Field              |
      | Collateral ID      |
      | Collateral Type    |
      | Collateral SubType |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

   #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Recommendation"]}
  Scenario Outline:Show History of collateral verification at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    Then following field should be present in history with correct data
      | Field              |
      | Verification Type  |
      | Agency             |
      | Date               |
      | Linked Application |
      | Status as complete |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline:"<Close_Cancel>" show history of collateral verification at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user "<Close_Cancel>" show history of collateral verification
    Then history pop up should be "<Close_Cancel>"
    Examples:
      | Close_Cancel |
      | closed       |
      | canceled     |


     #FeatureID-ACAUTOCAS-365
   #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Recommendation"]}
  #Application id in case multiple verification
  Scenario Outline:Check completed collateral verification summary of yellow ribbon at credit approval stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user checks the completed collateral verification details from status
    Then following details should be display in yellow ribbon in Collateral Verification summary
      | Field              |
      | Application ID     |
      | Product            |
      | Scheme             |
      | Customer Name      |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

         #FeatureID-ACAUTOCAS-368
  Scenario Outline:Property Address details validation of completed collateral verification summary at credit approval stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user checks the completed collateral verification details from status
    Then property address details should be present in collateral investigation verification
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

      #FeatureID-ACAUTOCAS-368
  Scenario Outline:Contact Number validation validation of completed collateral verification summary at credit approval stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user checks the completed collateral verification details from status
    Then Contact Number should be present in collateral investigation verification
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

# Legal Verification field should be non editable
  Scenario Outline:View Legal Verification details of completed collateral verification summary at credit approval stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user checks the completed collateral verification details from status
    Then following below fields should be non editable with data as filled in collateral investigation verification
      | Field                        |
      | Search Done                  |
      | EC Search Done               |
      | Remarks                      |
      | Status                       |
      | Received Date                |
      | Search EC Check Findings     |
      | Document Received            |
      | Document Received Date       |
      | Initial Status Query Stage   |
      | Remarks                      |
      | Type Of Property             |
      | Plan Type                    |
      | Final Status                 |
      | Final Document Received Date |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  Scenario Outline:View decision of Legal Verification field of completed collateral verification summary at credit approval stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user checks the completed collateral verification details from status
    Then following below fields should be non editable with data as filled in collateral investigation verification
      | Field               |
      | Verification Agency |
      | Verification Agent  |
      | Verification Date   |
      | Result              |
      | Remarks             |
      | No. Of Attempts     |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |



  Scenario Outline:Minimize the completed collateral verification summary at credit approval stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user checks the completed collateral verification details from status
    When user minimized the collateral verification summary
    Then collateral verification summary should be minimized

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline:Maximize the minimized the completed collateral verification summary at credit approval stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user checks the completed collateral verification details from status
    When user maximize the minimized collateral verification summary
    Then collateral verification summary should be minimized

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline:Close the completed collateral verification with the help of <Btn_Icon> at credit approval stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Show history
    And user checks the completed collateral verification details from status
    When user close the completed collateral verification with the help of <Btn_Icon>
    Then history pop up should be closed
    Examples:
      | Btn_Icon     |
      | close button |
      | close icon   |



#  on clicking re initiate- CI Re Initiation screen should be display which is same as CII.
  Scenario Outline:CI Re Initiation at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Re Initiate hyper link
    Then CI ReInitiation page should be open

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #  on clicking re initiate- CI Re Initiation screen should be display which is same as CII.
  Scenario Outline:Collateral verification details validation in CI Re Initiation at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Re Initiate hyper link
    Then following details should be present with correct data
      | Collateral ID          |
      | Collateral Number      |
      | Collateral Type        |
      | Collateral Sub Type    |
      | Last Verification Date |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline:Collateral verification status validation in CI Re Initiation at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Re Initiate hyper link
    Then Current Verification Status of all collateral should be as Verification Initiated
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  Scenario Outline:Collateral verification status validation after CI Re Initiation at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Re Initiate hyper link
    And user initiate collateral verification
    Then Legal Verification status shows as Not Okay
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline:Collateral verification status grid after CI Re Initiation at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    When user clicks on Re Initiate hyper link
    And user initiate collateral verification
    Then initiated verification should be added in verification grid
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  Scenario Outline:Collateral verification history grid after CI Re Initiation at credit approval stage after completion of collateral verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    And user checks legal verification details
    And user clicks on Re Initiate hyper link
    When user initiate collateral verification
    And  user clicks on Show history
    Then initiated verification should be added in verification history grid
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |






#======= Reconsideration =======================
#  Pre-Requisite:Application should at Reconsideration stage and parallel at Collateral Investigation Investigation

     #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Collateral verification details validation at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    Then following column should be present with correct data as filled
      | Column          |
      | Collateral Type |
      | Collateral ID   |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

      #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Collateral verification status validation at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    Then following column should be present with their correct values
      | Column              | Column_Data |
      | Verification Status | NA          |
      | Verification Date   | NA          |
      | Valuation Status    | NA          |
      | Valuation Date      | NA          |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


    #Pre-Requisite:Application should at Reconsideration stage and parallel at Collateral Investigation Verification

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Collateral verification status validation at Reconsideration stage after initiating verification along with valuation
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    Then following column should be present with their correct values
      | Column              | Column_Data         |
      | Verification Status | Initiated           |
      | Verification Date   | "Verification Date" |
      | Valuation Status    | Initiated           |
      | Valuation Date      | "Verification Date" |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


    #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
   # ${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Collateral verification history validation at Reconsideration stage after initiating <Verification_Valuation>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated "<Verification_Valuation>"
    Then following field should be present in yellow ribbon under history
      | Field               |
      | Collateral ID       |
      | Collateral Typ      |
      | Collateral Sub Type |
    Examples:
      | Verification_Valuation |
      | verification           |
      | valuation              |

     #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Collateral verification history grid data validation at Reconsideration stage after initiating verification
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated verification
    Then following field should be present in history grid with correct data as filled
      | Field              |
      | Verification Type  |
      | Agency             |
      | Date               |
      | Linked Application |
      | Status             |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
   # ${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Minimize the collateral verification history at Reconsideration stage after initiating <Verification_Valuation>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated "<Verification_Valuation>"
    When user minimized the history pop up
    Then history pop up should be minimized
    Examples:
      | Verification_Valuation |
      | verification           |
      | valuation              |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Maximize the minimized the collateral verification history at Reconsideration stage after initiating <Verification_Valuation>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated "<Verification_Valuation>"
    When user maximize the minimized history pop up
    Then history pop up should be minimized
    Examples:
      | Verification_Valuation |
      | verification           |
      | valuation              |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Close the collateral verification history pop up with the help of <Btn_Icon> at Reconsideration stage after initiating <Verification_Valuation>
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks initiated "<Verification_Valuation>"
    When user close the collateral verification history pop up with the help of <Btn_Icon>
    Then history pop up should be closed
    Examples:
      | Btn_Icon     | Verification_Valuation |
      | close button | verification           |
      | close icon   | verification           |
      | close button | valuation              |
      | close icon   | valuation              |

#After Verification completion

#Pre-Requisite:Application should at Reconsideration stage and parallel at Collateral Investigation Completion

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Collateral verification check at Reconsideration stage after collateral verification completion along with valuation
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" from application grid
    When user open application at recommendation stage
    And user open intent indicator accordion
    Then collateral verification should be display as C
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |



    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Collateral verification status validation at Reconsideration stage after collateral verification completion along with valuation
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    Then following column should be present with their correct values
      | Column              | Column_Data |
      | Verification Status | Complete    |
      | Valuation Status    | Complete    |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Collateral Details validation of completed verification at Reconsideration stage after collateral verification and valuation completion
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    And user checks the details of completed verification
    Then following field should be present in yellow ribbon under history
      | Field              |
      | Collateral ID      |
      | Collateral Type    |
      | Collateral SubType |

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Collateral verification status grid column validation at Reconsideration stage after collateral verification and valuation completion
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    When user open collateral verification section
    And user checks the details of completed verification
    Then following field should be present in history with correct data
      | Field              |
      | Verification Type  |
      | Agency             |
      | Date               |
      | Linked Application |
      | Status as complete |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |



   #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Completed verification summary details validation form history at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then following below fields should be present with correct data in yellow ribbon
      | Fields             |
      | Application ID     |
      | Product            |
      | Scheme             |
      | Customer Name      |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Property Address details validation of completed verification form history at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then property address details should be present in collateral investigation verification
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Contact Number validation of completed verification form history at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then Contact Number should be present in collateral investigation verification
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Legal Verification field validation of completed verification summary form history at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then following below fields should be non editable with data as filled in collateral investigation verification
      | Field                        |
      | Search Done                  |
      | EC Search Done               |
      | Remarks                      |
      | Status                       |
      | Received Date                |
      | Search EC Check Findings     |
      | Document Received            |
      | Document Received Date       |
      | Initial Status Query Stage   |
      | Remarks                      |
      | Type Of Property             |
      | Plan Type                    |
      | Final Status                 |
      | Final Document Received Date |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Legal Verification field of completed verification form history at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    When user checks the details of completed verification
    Then following below fields should be non editable with data as filled in collateral investigation verification
      | Field               |
      | Verification Agency |
      | Verification Agent  |
      | Verification Date   |
      | Result              |
      | Remarks             |
      | No. Of Attempts     |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Minimize the completed verification summary form history at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    And user checks the details of completed verification
    When user minimize the completed verification summary
    Then completed verification summary should be minimized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Maximize the minimize the completed verification form history at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    And user minimize the completed verification summary
    When user maximize the minimized completed verification summary
    Then completed verification summary should be maximized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-365
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    #${ApplicationStage:["Reconsideration"]}
  Scenario Outline:Close the completed verification summary form history with the help of <Icon_Btn> at Reconsideration stage
    And user open "<ProductType>" application of individual applicant at "<ApplicationStage>" form application grid
    And user open intent indicator accordion
    And user open collateral verification section
    And user checks the details of completed verification
    When user close completed verification summary with the help of <Icon_Btn>
    Then completed verification summary should be closed
    Examples:
      | Icon_Btn |
      | icon     |
      | button   |

    