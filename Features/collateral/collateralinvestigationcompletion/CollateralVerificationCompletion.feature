@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
@new
Feature:Collateral Investigation Completion for verification


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0




     #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Collateral details validation in collateral verification completion
    And user open collateral investigation completion page
    When user open an application which verification type is "<VerificationType>"
    Then following below collateral detail should be present in yellow ribbon
      | Fields             |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
    Examples:
      | VerificationType   |
      | Legal Verification |

    #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Verification details validation in collateral verification completion
    And user open collateral investigation completion page
    When user open an application which verification type is "<VerificationType>"
    Then following below verification detail should be present as filled
      | Fields              |
      | Verification Agency |
      | Verification Agent  |
      | Verification Type   |
      | Verification Date   |
      | Remarks             |
      | Result              |
    Examples:
      | VerificationType   |
      | Legal Verification |

   #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Decision fields validation in Collateral investigation completion
    And user open collateral investigation completion page
    When user open an application which verification type is "<VerificationType>"
    Then following below fields under decision section should be present
      | Fields             |
      | Decision           |
      | Reason             |
      | Reason Description |
      | Decision Comments  |
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:<Save> Collateral Verification Completion without filling <Field>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user fills all filled except "<Field>"
    And user "<Save>" collateral verification completion
    Then collateral verification completion details should not be "<Save>"
    Examples:
      | Field    | Save          |
      | Decision | Save          |
      | Reason   | Save          |
      | Decision | Save And Next |
      | Reason   | Save And Next |
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reason Description validation in collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user fills Reason Code with "<Code>"
    Then Reason Description should be "<FieldNature>"
    Examples:
      | Code              | FieldNature  |
      | any listed reason | non editable |
      | other             | editable     |
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Add <NoOfReasons> reason in collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user add <NoOfReasons> reason
    Then <NoOfReasons> reason should be added successfully
    Examples:
      | NoOfReasons | VerificationType   |
      | single      | Legal Verification |
      | multiple    | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Delete the added reason in collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user add the reason
    When user delete the added reasons
    Then reasons should be deleted successfully
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Duplicate reason not allowed in collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user add the reason with duplicate reason
    Then a error occurred as Duplicate reason
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Decision Comments field validation in collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user fills Decision Comments field with "<Characters>" characters
    Then "<Left_Characters>" characters should be remaining to fill in Decision Comments field
    Examples:
      | Characters | Left_Characters | VerificationType   |
      | 3000       | 1000            | Legal Verification |
      | 2000       | 2000            | Legal Verification |
      | 4000       | 0               | Legal Verification |


        #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Property Address details validation of completed verification summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user checks the details of completed verification
    Then property address details should be present in collateral investigation verification
    Examples:
      | VerificationType   |
      | Legal Verification |


      #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Contact Number validation of completed verification summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user checks the details of completed verification
    Then Contact Number should be present in collateral investigation verification
    Examples:
      | VerificationType   |
      | Legal Verification |



#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Legal Verification field validation of completed verification summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
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
      | VerificationType   |
      | Legal Verification |



#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Legal Verification field of completed verification summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
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
      | VerificationType   |
      | Legal Verification |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the completed verification summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user checks the details of completed verification
    When user minimize the completed verification summary
    Then completed verification summary should be minimized
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimize the completed verification summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user checks the details of completed verification
    And user minimize the completed verification summary
    When user maximize the minimized completed verification summary
    Then completed verification summary should be maximized
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Close the completed verification summary with the help of <Icon_Btn>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user checks the details of completed verification
    When user close completed verification summary with the help of <Icon_Btn>
    Then completed verification summary should be closed
    Examples:
      | Icon_Btn | VerificationType   |
      | icon     | Legal Verification |
      | button   | Legal Verification |


  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Show history of Collateral Verification Completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user clicks on show history
    Then following below fields should be present with correct filled data in history grid
      | Field             |
      | Verification Type |
      | Agency            |
      | Date              |
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Verify columns of history grid in Collateral Verification Completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user clicks on show history
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


  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the history modal of verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user minimize the history modal of verification completion
    Then history modal should be minimized
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimized history modal of verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user minimize the history modal of verification completion
    When user maximize the minimized history modal of verification completion
    Then history modal should be maximized
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Close the history modal of verification completion with the help of <Icon_Btn>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user close history modal of verification completion with the help of <Icon_Btn>
    Then history modal should be closed
    Examples:
      | Icon_Btn | VerificationType   |
      | icon     | Legal Verification |
      | button   | Legal Verification |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Completed verification summary validation form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
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
      | VerificationType   |
      | Legal Verification |


      #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Property Address details validation of completed verification summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user checks the details of completed verification
    Then property address details should be present in collateral investigation verification
    Examples:
      | VerificationType   |
      | Legal Verification |


     #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Contact Number validation of completed verification summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user checks the details of completed verification
    Then Contact Number should be present in collateral investigation verification
    Examples:
      | VerificationType   |
      | Legal Verification |



#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Legal Verification field validation of completed verification summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
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
      | VerificationType   |
      | Legal Verification |



 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Legal Verification field of completed verification summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
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
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the completed verification summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user checks the details of completed verification
    When user minimize the completed verification summary
    Then completed verification summary should be minimized
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimize the completed verification summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user checks the details of completed verification
    And user minimize the completed verification summary
    When user maximize the minimized completed verification summary
    Then completed verification summary should be maximized
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Close the completed verification summary form history with the help of <Icon_Btn>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user checks the details of completed verification
    When user close completed verification summary with the help of <Icon_Btn>
    Then completed verification summary should be closed
    Examples:
      | Icon_Btn | VerificationType   |
      | icon     | Legal Verification |
      | button   | Legal Verification |


#    Re-Initiate verification
#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Re initiate verification to the <NoOfAgency> agency in Collateral Verification Completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate verification
    When user re initiate verification to the "<NoOfAgency>" agency
    Then verification should be re initiated successfully
    Examples:
      | NoOfAgency | VerificationType   |
      | single     | Legal Verification |
      | multiple   | Legal Verification |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Re initiate verification with duplicate agency in Collateral Verification Completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate verification
    When user re initiate verification with duplicate agency
    Then verification should not be re initiated with an error message as Duplicate Verification
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Re initiate verification without selecting agency in Collateral Verification Completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate verification
    When user re initiate verification without selecting agency
    Then an error message occurred
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Delete the selected agency while re initiating verification in Collateral Verification Completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate verification
    When user select agency to re initiating verification
    And user deletes the selected agency
    Then agency should be deleted
    Examples:
      | VerificationType   |
      | Legal Verification |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the Re Initiate Verification pop up screen
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate verification
    When user minimize the Re-Initiate verification pop up screen
    Then Re Initiate Verification pop up screen should be minimized
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimize the Re Initiate Verification pop up screen
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate verification
    And user minimize the Re-Initiate verification pop up screen
    When user maximize the minimized Re-Initiate verification pop up screen
    Then Re Initiate Verification pop up screen should be maximized
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Close the Re Initiate Verification pop up screen with the help of <Icon_Btn>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user close Re Initiate Verification pop up screen with the help of <Icon_Btn>
    Then Re Initiate Verification pop up screen should be closed
    Examples:
      | Icon_Btn | VerificationType   |
      | icon     | Legal Verification |
      | button   | Legal Verification |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Check application in grid after Re initiate verification in Collateral Investigation Completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate verification
    When user re initiate verification
    And user checks the application in collateral investigation completion grid
    Then application should be present in cic grid
    Examples:
      | VerificationType   |
      | Legal Verification |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Saving verification completion decision without completing all verification task
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re Initiate verification
    When user re initiate verification
    And user clicks on Save & Proceed button
    Then an error message should be occurred to complete all verification task
    Examples:
      | VerificationType   |
      | Legal Verification |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Check application in grid after completing verification
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Save & Proceed button
    When user checks the application in collateral investigation completion grid
    Then application should not be present in cic grid
    Examples:
      | VerificationType   |
      | Legal Verification |

#    ReOpen

     #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reopen investigation modal validation in collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user clicks on reopen to reopen the completed verification
    Then Reopen Investigation modal should be open
    Examples:
      | VerificationType   |
      | Legal Verification |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Required field validation of Reopen investigation in collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user clicks on Required fields in customer details
    Then following mandatory fields should be present in customer details
      | Mandatory_Field    |
      | Reason code        |
      | Reason Description |
    Examples:
      | VerificationType   |
      | Legal Verification |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:All fields validation of Reopen investigation collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user clicks on All Fields in customer details
    Then all fields should be present in customer details
      | All_Fields          |
      | Reason code         |
      | Reason Description  |
      | Additional Comments |
    Examples:
      | VerificationType   |
      | Legal Verification |


   #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reopen Investigation for verification without filling <Field>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user fills all filled except "<Field>"
    And user save reopen investigation details
    Then collateral investigation should not de re opened for verification
    Examples:
      | Field              |
      | Reason code        |
      | Reason Description |
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reason Description validation in Reopen investigation for collateral verification
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user fills Reason Code with "<Code>"
    Then Reason Description should be "<FieldNature>"
    Examples:
      | Code              | FieldNature  |
      | any listed reason | non editable |
      | other             | editable     |
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Add <NoOfReasons> reason in Reopen investigation for collateral verification
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user add <NoOfReasons> reason
    Then <NoOfReasons> reason should be added successfully
    Examples:
      | NoOfReasons | VerificationType   |
      | single      | Legal Verification |
      | multiple    | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Delete the added reason in Reopen investigation for collateral verification
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    And user add the reason
    When user delete the added reasons
    Then reasons should be deleted successfully
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Duplicate reason not allowed in Reopen investigation for collateral verification
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user add the reason with duplicate reason
    Then a error occurred as Duplicate reason
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Additional Comments field validation in Reopen investigation for collateral verification
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user fills Additional Comments field with "<Characters>" characters
    Then "<Left_Characters>" characters should be remaining to fill in Additional Comments field
    Examples:
      | Characters | Left_Characters | VerificationType   |
      | 3000       | 1000            | Legal Verification |
      | 2000       | 2000            | Legal Verification |
      | 4000       | 0               | Legal Verification |

    #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the Reopen investigation modal in collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user minimize the Re-Initiate verification pop up screen
    Then Reopen investigation modal should be minimized
    Examples:
      | VerificationType   |
      | Legal Verification |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimize the Reopen investigation modal in collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user maximize the minimized Reopen investigation modal
    Then Reopen investigation modal should be maximized
    Examples:
      | VerificationType   |
      | Legal Verification |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:<Close_Cancel> the Reopen investigation modal with the help of <Icon_Btn>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user "<Close_Cancel>" Reopen investigation modal
    Then Reopen investigation modal should be "<Close_Cancel>"
    Examples:
      | Close_Cancel | VerificationType   |
      | close        | Legal Verification |
      | cancel       | Legal Verification |


     #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reopen investigation from collateral verification completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    When user fills all fields to reopen investigation
    Then investigation for collateral verification should be reopened
    Examples:
      | VerificationType   |
      | Legal Verification |

       #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reopened investigation validation in collateral verification grid
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed verification
    And user reopen investigation from collateral verification completion
    When user check the application in the collateral verification grid
    Then reopened investigation should be present in the grid
    Examples:
      | VerificationType   |
      | Legal Verification |