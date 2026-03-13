@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
  @new
Feature:Collateral Investigation Completion for valuation


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0




      #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Collateral details validation in collateral investigation completion
    And user open collateral investigation completion page
    When user open an application which verification type is "<VerificationType>"
    Then following below collateral detail should be present in yellow ribbon
      | Fields             |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
    Examples:
      | VerificationType |
      | Valuation        |


      #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Valuation details validation in collateral investigation completion
    And user open collateral investigation completion page
    When user open an application which verification type is "<VerificationType>"
    Then following below valuation detail should be present as filled
      | Fields            |
      | Valuation Agency  |
      | Evaluated By      |
      | Evaluation Method |
      | Valuation Date    |
      | Evaluated Value   |
    Examples:
      | VerificationType |
      | Valuation        |

    #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Fields validation of valuation in collateral investigation valuation completion
    And user open collateral investigation completion page
    When user open an application which verification type is "<VerificationType>"
    Then following below field should be present with their mode
      | Field                         | Nature       |
      | Evaluated Value Type          | editable     |
      | Value                         | non editable |
      | Accepted Evaluated Value Type | non editable |
      | Accepted Value                | non editable |
      | Last Valuation Date           | non editable |
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:<Save> Collateral investigation valuation completion without filling <Field> field
    And user open collateral investigation page
    And user open an application which verification type is "<VerificationType>"
    When user fills all filled except "<Field>"
    And user "<Save>" collateral investigation valuation completion
    Then collateral valuation completion details should not be "<Save>"
    Examples:
      | Field                | Save          | VerificationType |
      | Evaluated Value Type | Save          | Valuation        |
      | Evaluated Value Type | Save And Next | Valuation        |


  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Value field validation in collateral investigation valuation completion
    And user open collateral investigation page
    And user open an application which verification type is "<VerificationType>"
    When user fills Evaluated Value Type as "<EvaluatedValue>"
    Then Value field should be "<FieldNature>"
    Examples:
      | EvaluatedValue | FieldNature  | VerificationType |
      | Min            | non editable | Valuation        |
      | Max            | non editable | Valuation        |
      | Avg            | non editable | Valuation        |
      | Others         | editable     | Valuation        |
      | Min            | auto filled  | Valuation        |
      | Max            | auto filled  | Valuation        |
      | Avg            | auto filled  | Valuation        |


  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Completed valuation summary validation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user checks the details of completed valuation
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
      | VerificationType |
      | Valuation        |


        #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Property Address details validation of completed valuation summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user checks the details of completed valuation
    Then property address details should be present in collateral investigation valuation
    Examples:
      | VerificationType |
      | Valuation        |


      #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Contact Number validation of completed valuation summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user checks the details of completed valuation
    Then Contact Number should be present in collateral investigation valuation
    Examples:
      | VerificationType |
      | Valuation        |



#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Technical Verification field validation of completed valuation summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user checks the details of completed valuation
    Then following below fields should be non editable with data as filled in collateral investigation valuation
      | Field                                |
      | Document Received                    |
      | Document Received Date               |
      | Initial Status Query Stage           |
      | Final Document Received Date         |
      | Base Document For Area               |
      | Usage Type                           |
      | Approved Usage As Per Authority      |
      | Approved Usage Others                |
      | Type Of Property                     |
      | Total                                |
      | Distress Value                       |
      | Age of Property                      |
      | Status                               |
      | Residual Age of Property             |
      | Remarks                              |
      | Percentage Completion Of Property(%) |
    Examples:
      | VerificationType |
      | Valuation        |


#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Construction details validation of completed valuation summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user checks the details of completed valuation
    Then following below fields should be non editable with data as filled in collateral investigation valuation
      | Field                 |
      | Area To Be Considered |
      | Area As Per Document  |
      | Units                 |
      | FMV                   |
      | Area As Per Plan      |
      | PSFT Rate             |
    Examples:
      | VerificationType |
      | Valuation        |

    #FeatureID-ACAUTOCAS-14208
  Scenario Outline:LAND details validation of completed valuation summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user checks the details of completed valuation
    Then following below fields should be non editable with data as filled in collateral investigation valuation
      | Field                 |
      | Area To Be Considered |
      | Area As Per Document  |
      | Units                 |
      | FMV                   |
      | Area As Per Plan      |
      | PSFT Rate             |
    Examples:
      | VerificationType |
      | Valuation        |

   #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Valuation details validation of completed valuation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user checks the details of completed valuation
    Then following below fields should be non editable with data as filled in collateral investigation valuation
      | Field             |
      | Valuation Agency  |
      | Evaluated By      |
      | Evaluation Method |
      | Valued Amount     |
      | Valuation Date    |
      | Valuation Time    |
    Examples:
      | VerificationType |
      | Valuation        |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the completed valuation summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user checks the details of completed valuation
    When user minimize the completed valuation summary
    Then completed valuation summary should be minimized
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimize the completed valuation summary
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user checks the details of completed valuation
    And user minimize the completed valuation summary
    When user maximize the minimized completed valuation summary
    Then completed valuation summary should be maximized
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Close the completed valuation summary with the help of <Icon_Btn>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user checks the details of completed valuation
    When user close completed valuation summary with the help of <Icon_Btn>
    Then completed valuation summary should be closed
    Examples:
      | Icon_Btn | VerificationType |
      | icon     | Valuation        |
      | button   | Valuation        |


  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Show history of completed collateral valuation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user clicks on show history
    Then following below fields should be present with correct filled data in history grid
      | Field                         |
      | Accepted Value                |
      | Accepted Evaluated Value Type |
      | Last Valuation Date           |
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Verify columns of history grid in of completed collateral valuation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user clicks on show history
    Then following column should be present in history grid
      | Field                         |
      | Accepted Value                |
      | Accepted Evaluated Value Type |
      | Last Valuation Date           |
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Status validatin completed collateral valuation in history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user clicks on show history
    Then status should be wip in history grid
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the history modal of valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user minimize the history modal of valuation completion
    Then history modal should be minimized
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimized history modal of valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user minimize the history modal of valuation completion
    When user maximize the minimized history modal of valuation completion
    Then history modal should be maximized
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Close the history modal of valuation completion with the help of <Icon_Btn>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user close history modal of valuation completion with the help of <Icon_Btn>
    Then history modal should be closed
    Examples:
      | Icon_Btn | VerificationType |
      | icon     | Valuation        |
      | button   | Valuation        |

    #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Validated WIP valuation form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user open WIP valuation
    Then following below history grid cloumn should be present with correct data in history
      | Fields            |
      | Valuation Agency  |
      | Evaluated By      |
      | Evaluation Method |
      | Valuation Date    |
      | Evaluated Value   |
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Validated status of WIP valuation form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user open WIP valuation
    Then all valuation should be present with completed status
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Completed valuation summary validation form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    When user checks the details of completed valuation
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
      | VerificationType |
      | Valuation        |


      #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Property Address details validation of completed valuation summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    When user checks the details of completed valuation
    Then property address details should be present in collateral investigation valuation
    Examples:
      | VerificationType |
      | Valuation        |


     #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Contact Number validation of completed valuation summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    When user checks the details of completed valuation
    Then Contact Number should be present in collateral investigation valuation
    Examples:
      | VerificationType |
      | Valuation        |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Technical Verification field validation of completed valuation summary from history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    When user checks the details of completed valuation
    Then following below fields should be non editable with data as filled in collateral investigation valuation
      | Field                                |
      | Document Received                    |
      | Document Received Date               |
      | Initial Status Query Stage           |
      | Final Document Received Date         |
      | Base Document For Area               |
      | Usage Type                           |
      | Approved Usage As Per Authority      |
      | Approved Usage Others                |
      | Type Of Property                     |
      | Total                                |
      | Distress Value                       |
      | Age of Property                      |
      | Status                               |
      | Residual Age of Property             |
      | Remarks                              |
      | Percentage Completion Of Property(%) |
    Examples:
      | VerificationType |
      | Valuation        |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Construction details validation of completed valuation summary from history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    When user checks the details of completed valuation
    Then following below fields should be non editable with data as filled in collateral investigation valuation
      | Field                 |
      | Area To Be Considered |
      | Area As Per Document  |
      | Units                 |
      | FMV                   |
      | Area As Per Plan      |
      | PSFT Rate             |
    Examples:
      | VerificationType |
      | Valuation        |

    #FeatureID-ACAUTOCAS-14208
  Scenario Outline:LAND details validation of completed valuation summary from history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    When user checks the details of completed valuation
    Then following below fields should be non editable with data as filled in collateral investigation valuation
      | Field                 |
      | Area To Be Considered |
      | Area As Per Document  |
      | Units                 |
      | FMV                   |
      | Area As Per Plan      |
      | PSFT Rate             |
    Examples:
      | VerificationType |
      | Valuation        |

   #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Valuation details validation of completed valuation from history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    When user checks the details of completed valuation
    Then following below fields should be non editable with data as filled in collateral investigation valuation
      | Field             |
      | Valuation Agency  |
      | Evaluated By      |
      | Evaluation Method |
      | Valued Amount     |
      | Valuation Date    |
      | Valuation Time    |
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the completed valuation summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    And user checks the details of completed valuation
    When user minimize the completed valuation summary
    Then completed valuation summary should be minimized
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimize the completed valuation summary form history
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    And user checks the details of completed valuation
    And user minimize the completed valuation summary
    When user maximize the minimized completed valuation summary
    Then completed valuation summary should be maximized
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Close the completed valuation summary form history with the help of <Icon_Btn>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    And user open WIP valuation
    And user checks the details of completed valuation
    When user close completed valuation summary with the help of <Icon_Btn>
    Then completed valuation summary should be closed
    Examples:
      | Icon_Btn | VerificationType |
      | icon     | Valuation        |
      | button   | Valuation        |


#    Re-Initiate valuation
#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Re initiate valuation to the <NoOfAgency> agency in collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate valuation
    When user re initiate valuation to the "<NoOfAgency>" agency
    Then valuation should be re initiated successfully
    Examples:
      | NoOfAgency | VerificationType |
      | single     | Valuation        |
      | multiple   | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Re initiate valuation with duplicate agency in collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate valuation
    When user re initiate valuation with duplicate agency
    Then valuation should not be re initiated with an error message as Duplicate Verification
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Re initiate valuation without selecting agency in collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate valuation
    When user re initiate valuation without selecting agency
    Then an error message occurred
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Delete the selected agency while re initiating valuation in collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate valuation
    When user select agency to re initiating valuation
    And user deletes the selected agency
    Then agency should be deleted
    Examples:
      | VerificationType |
      | Valuation        |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the Re Initiate Valuation pop up screen
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate valuation
    When user minimize the Re-Initiate valuation pop up screen
    Then Re Initiate Valuation pop up screen should be minimized
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimize the Re Initiate Valuation pop up screen
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate valuation
    And user minimize the Re-Initiate valuation pop up screen
    When user maximize the minimized Re-Initiate valuation pop up screen
    Then Re Initiate Valuation pop up screen should be maximized
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Close the Re Initiate Valuation pop up screen with the help of <Icon_Btn>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on show history
    When user close Re Initiate Valuation pop up screen with the help of <Icon_Btn>
    Then Re Initiate Valuation pop up screen should be closed
    Examples:
      | Icon_Btn | VerificationType |
      | icon     | Valuation        |
      | button   | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Check application in grid after Re initiate valuation in Collateral Investigation Completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re-Initiate valuation
    When user re initiate valuation
    And user checks the application in collateral investigation completion grid
    Then application should be present in cic grid
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Saving valuation completion decision without completing all valuation task
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Re Initiate valuation
    When user re initiate valuation
    And user clicks on Save & Proceed button
    Then an error message should be occurred to complete all valuation task
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Check application in grid after completing valuation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on Save & Proceed button
    When user checks the application in collateral investigation completion grid
    Then application should not be present in cic grid
    Examples:
      | VerificationType |
      | Valuation        |

        #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reopen investigation modal validation in collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    When user clicks on reopen to reopen the completed valuation
    Then Reopen Investigation modal should be open
    Examples:
      | VerificationType |
      | Valuation        |

#FeatureID-ACAUTOCAS-14208
  Scenario Outline:Required field validation of Reopen investigation in collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user clicks on Required fields in customer details
    Then following mandatory fields should be present in customer details
      | Mandatory_Field    |
      | Reason code        |
      | Reason Description |
    Examples:
      | VerificationType |
      | Valuation        |
#FeatureID-ACAUTOCAS-14208
  Scenario Outline:All fields validation of Reopen investigation collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user clicks on All Fields in customer details
    Then all fields should be present in customer details
      | All_Fields          |
      | Reason code         |
      | Reason Description  |
      | Additional Comments |
    Examples:
      | VerificationType |
      | Valuation        |


   #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reopen Investigation for valuation without filling <Field>
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user fills all filled except "<Field>"
    And user save reopen investigation details
    Then collateral investigation should not de re opened for verification
    Examples:
      | Field              |
      | Reason code        |
      | Reason Description |
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reason Description validation in Reopen investigation for collateral valuation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user fills Reason Code with "<Code>"
    Then Reason Description should be "<FieldNature>"
    Examples:
      | Code              | FieldNature  |
      | any listed reason | non editable |
      | other             | editable     |
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Add <NoOfReasons> reason in Reopen investigation for collateral valuation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user add <NoOfReasons> reason
    Then <NoOfReasons> reason should be added successfully
    Examples:
      | NoOfReasons | VerificationType |
      | single      | Valuation        |
      | multiple    | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Delete the added reason in Reopen investigation for collateral valuation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    And user add the reason
    When user delete the added reasons
    Then reasons should be deleted successfully
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Duplicate reason not allowed in Reopen investigation for collateral valuation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user add the reason with duplicate reason
    Then a error occurred as Duplicate reason
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Additional Comments field validation in Reopen investigation for collateral valuation
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user fills Additional Comments field with "<Characters>" characters
    Then "<Left_Characters>" characters should be remaining to fill in Additional Comments field
    Examples:
      | Characters | Left_Characters | VerificationType |
      | 3000       | 1000            | Valuation        |
      | 2000       | 2000            | Valuation        |
      | 4000       | 0               | Valuation        |

    #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Minimize the Reopen investigation modal in collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user minimize the Re-Initiate verification pop up screen
    Then Reopen investigation modal should be minimized
    Examples:
      | VerificationType |
      | Valuation        |

 #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Maximize the minimize the Reopen investigation modal in collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user maximize the minimized Reopen investigation modal
    Then Reopen investigation modal should be maximized
    Examples:
      | VerificationType |
      | Valuation        |

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:<Close_Cancel> the Reopen investigation modal with the help of <Icon_Btn> in collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user "<Close_Cancel>" Reopen investigation modal
    Then Reopen investigation modal should be "<Close_Cancel>"
    Examples:
      | Close_Cancel | VerificationType |
      | close        | Valuation        |
      | cancel       | Valuation        |


     #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reopen investigation from collateral valuation completion
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    When user fills all fields to reopen investigation
    Then investigation for collateral verification should be reopened
    Examples:
      | VerificationType |
      | Valuation        |

       #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Reopened investigation validation for completed valuation in collateral verification grid
    And user open collateral investigation completion page
    And user open an application which verification type is "<VerificationType>"
    And user clicks on reopen to reopen the completed valuation
    And user reopen investigation from collateral valuation completion
    When user check the application in the collateral verification grid
    Then reopened investigation should be present in the grid
    Examples:
      | VerificationType |
      | Valuation        |