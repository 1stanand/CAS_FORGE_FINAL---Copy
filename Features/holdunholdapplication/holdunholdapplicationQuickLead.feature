@Epic-Quick_Lead
@ReviewedBy-
@AuthoredBy-ananta.bhatia
@NotImplemented

Feature: Perform Hold Unhold of application on Quick Lead

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

     #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Hold application pop up msg validate
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user clicks on More action
    When from more action user clicks on Hold
    Then A popup should come with msg "There are some changes. Press OK to 'Save' the changes & 'Hold' and CANCEL to 'Do Nothing'."
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Hold application pop up message cancel validate
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    When user Cancel
    Then popup should be closed

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Check hold popup label
    And user is at "<ApplicationStage>>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    When user clicks on ok
    Then a popup shoud open with label "Reassignment Date"

    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Validate fields in hold popup
    And user is at "<ApplicationStage>>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    When user clicks on ok
    Then pop should contain following fields
      | FieldName         |
      | Reassignment Date |
      | Time of Reassign  |
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Minimize hold popup
    And user is at "<ApplicationStage>>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    And user clicks on ok
    When user mimimize using icon
    Then popup should be minimized to the left of page
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Maximize hold pop up
    And user is at "<ApplicationStage>>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    And user clicks on ok
    And user mimimize using icon
    When maximize with icon
    Then popup should be maximized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

   #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Closing pop up with icon
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    And user clicks on ok
    When user close this popup with close icon.
    Then popup should be closed
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


   #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Valaifating error message of fields
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    And user clicks on ok
    And user enters <"InputType"> in "<FieldName>"
    When clicks on done
    Then error message should "<ThrowNotThrow>"
    Examples:
      | ProductType   | ApplicationStage   | FieldName         | Validity | InputType              | ThrowNotThrow  | ExcelName                | ShheetName | Sheetrow |
      | <ProductType> | <ApplicationStage> | Reassignment date | invalid  | current date           | throw an       | QuickLeadUnholdHold.xslx | Errormsg   | 0        |
      | <ProductType> | <ApplicationStage> | Time of Reassign  | invalid  | current time           | throw an       | QuickLeadUnholdHold.xslx | Errormsg   | 1        |
      | <ProductType> | <ApplicationStage> | Time of Reassign  | valid    | more than current date | not throws any | QuickLeadUnholdHold.xslx |            |          |
      | <ProductType> | <ApplicationStage> | Time of Reassign  | valid    | more than current time | not throws any | QuickLeadUnholdHold.xslx |            |          |


      #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Validate Decision Popup label
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    And user clicks on ok
    And a popup shoud open with label "Reassignment Date"
    And user fills all the fields
    When clicks on done
    Then a popup should open with label "Decision Reason"
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

   #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Minimize decision popup label
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    And user clicks on ok
    And user fills all the fields
    And clicks on done
    When user mimimize using icon
    Then popup should be minimized to the left of page
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Maximize decision popup
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    And user clicks on ok
    And user fills all the fields
    And clicks on done
    And user mimimize using icon
    When maximize with icon
    Then popup should be maximized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Close decision popup with icon
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    And user clicks on ok
    And user fills all the fields
    And clicks on done
    When user close this popup with close icon.
    Then popup should be closed
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Select decision
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user clicks on More action
    And from more action user clicks on Hold
    And A popup comes to hold application
    And user clicks on ok
    And user fills all the fields
    And clicks on done
    And user selects decision
    When clicks on done
    Then user should land on lead grid
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

      #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Hold application without adding communication details
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And communication details are not
    And user clicks on More action
    When from more action user clicks on Hold
    Then error message should "<ThrowNotThrow>"
    Examples:
      | ProductType   | ApplicationStage   | ThrowNotThrow |
      | <ProductType> | <ApplicationStage> | throw an      |

   #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Validate application at Hold grid quick lead
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    When user opens hold grid of "<Stage>" stage.
    Then application should be present in this grid.
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

   #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Hold application grid
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    When user opens grid of "<ApplicationStage>" stage.
    Then application should not be present in this grid.
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


   #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline:  Application Grid
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    When user opens application grid
    Then application should not be present in this grid.
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


  #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Quick Lead Application Grid
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    And user navigates to application grid
    When user opens grid of "<ApplicationStage>" stage
    Then application should not be present in this grid.
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


   #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Unhold decision reason popup
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    And user navigates to application grid
    And user opens grid of "<ApplicationStage>" stage
    And user opens the application
    And click on more action button
    When unhold the application
    Then popup should open with label "Decision Reason"
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

  #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline:cValidate Popup Label
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    And user navigates to application grid
    And user opens grid of "<ApplicationStage>" stage
    And user opens the application
    And click on more action button
    When unhold the application
    Then popup should open with label "Decision Reason"
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Minimize popup Decision Reason
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    And user navigates to application grid
    And user opens grid of "<ApplicationStage>" stage
    And user opens the application
    And click on more action button
    And unhold the application
    When user mimimize the pop-up opened
    Then pop-up should be minimized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Maximize popup Decision Reason
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    And user navigates to application grid
    And user opens grid of "<ApplicationStage>" stage
    And user opens the application
    And click on more action button
    And unhold the application
    And user mimimize the pop openend
    When  maximize using icon
    Then pop-up should be maximized
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Close popup Decision Reason
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    And user navigates to application grid
    And user opens grid of "<ApplicationStage>" stage
    And user opens the application
    And click on more action button
    And unhold the application
    When user close the popup with icon
    Then popup should be closed
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

    #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Selects decision
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    And user navigates to application grid
    And user opens grid of "<ApplicationStage>" stage
    And user opens the application
    And click on more action button
    And unhold the application
    And user select reason
    When click on done
    Then application should land to lead grid
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Enquiry Hold
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    And user navigates to Enquiry
    And user search through LeadID
    When user opens the application
    Then application should be present in results
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |

     #FeatureID-ACAUTOCAS-311
     # ${ProductType:["CEQ","CV","CV","CC","FE","HL","JLG","KCC","LAP","MHF","PF","SHG"]}
     # ${ApplicationStage:["Quick Lead"]}
  Scenario Outline: Enquiry Unhold
    And user is at "<ApplicationStage>" stage of "<ProductType>"
    And user performs hold on application
    And user performs unhold on application
    And user navigates to Enquiry
    And user search through LeadID
    When user opens the application
    Then application should be present in results
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |