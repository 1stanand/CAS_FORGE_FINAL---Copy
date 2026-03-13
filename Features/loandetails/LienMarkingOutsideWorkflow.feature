@Epic-Loan_Application_Details
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-
@NotImplemented
@Conventional
@Islamic
Feature:Lien Marking outside workflow

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-10455
  Scenario:Lien Author page validation
    When user open lien author page
    Then following field should be present
      | Field              |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
      | Collateral Ref No  |
      | Collateral Status  |
      | Owner              |


        #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Dependent fields validation based on  "<CollateralType>" along with "<CollateralSubType>" in Lien Author page
    When user open lien author page
    And user selects collateral type as "<CollateralType>"
    And user selects collateral sub type as "<CollateralSubType>"
    Then "<Field>" field should be display
    Examples:
      | CollateralType        | CollateralSubType                   | Field                           |
      | Asset                 | Consumer Durable                    | Asset Serial Number             |
      | Asset                 | Commercial Vehicle                  | Registration Number (RC Number) |
      | Asset                 | Commercial Equipment                | Registration Number (RC Number) |
      | Asset                 | Consumer Vehicle                    | Registration Number (RC Number) |
      | Asset                 | Implements and Attachments          | Registration Number             |
      | Asset                 | Tractor                             | Registration Number (RC Number) |
      | Deposit               | Kisan Vikas Patra                   | Deposit Number                  |
      | Deposit               | Fixed Deposit                       | Fixed Deposit Number            |
      | Deposit               | National Saving Certificate         | Deposit Number                  |
      | Gold                  | Gold                                | Collateral Ref No               |
      | Gold                  | Ornament                            | Collateral Ref No               |
      | Government Securities | Bonds                               | Collateral Ref No               |
      | Guarantee             | Mortgage Guarantee                  | Collateral Ref No               |
      | Guarantee             | Corporate Guarantee                 | Deed Number                     |
      | Insurance             | Insurance                           | Policy Number                   |
      | Land                  | Agricultural Land                   | Collateral Ref No               |
      | Property              | Builder Property Under Construction | Collateral Ref No               |
      | Property              | Purchase a Plot                     | Collateral Ref No               |
      | Property              | Construction On Land                | Collateral Ref No               |
      | Property              | Ready Property                      | Collateral Ref No               |
      | Property              | Plot + Self Construction            | Collateral Ref No               |




      #FeatureID-ACAUTOCAS-10455
  Scenario:Advance parameters validation of Lien Author page
    And user open lien author page
    When user clicks on Show_Hide Advance Parameters
    Then following field should be present
      | Field          |
      | Source System  |
      | Application ID |
      | Host System    |
      | Account Number |
      | Deal ID        |
      | CIF Number     |
      | Customer Name  |
      | Mobile Number  |
      | Branch         |

    #FeatureID-ACAUTOCAS-10455
  Scenario:Lien added collateral grid validation in Lien Author page
    When user open lien author page
    Then following columns should be present results grid
      | Field              |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
      | Collateral Ref No  |
      | Collateral Status  |
      | Owner              |
      | Action             |


      #FeatureID-ACAUTOCAS-10455
  Scenario:Application details columns validation of collateral
    And user open lien author page
    When user expand the collateral which mapped with multiple applications
    Then following columns should be present
      | Field                |
      | Application/Split ID |
      | Account Number       |
      | Customer Name        |
      | Neo Cust ID          |
      | Deal ID              |
      | Branch               |
      | Source System        |


       #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Search collateral on the basis of <GridColumn> in Lien Author
    And user open lien author page
    When user search collateral on the basis of <GridColumn> in grid
    Then collateral should be display in grid
    Examples:
      | GridColumn         |
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
      | Collateral Ref No  |
      | Collateral Status  |
      | Owner              |


       #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Search collateral on the basis of advanced parameter <GridColumn> in Lien Author
    And user open lien author page
    When user search collateral on the basis of <GridColumn> in grid
    Then collateral should be display in grid
    Examples:
      | GridColumn     |
      | Source System  |
      | Application ID |
      | Host System    |
      | Account Number |
      | Deal ID        |
      | CIF Number     |
      | Customer Name  |
      | Mobile Number  |
      | Branch         |


       #FeatureID-ACAUTOCAS-10455
  Scenario:Reset all fields after filling in Lien Author
    And user open lien author page
    When user fills below fields
      | Collateral Number  |
      | Collateral Type    |
      | Collateral SubType |
      | Collateral Ref No  |
      | Collateral Status  |
      | Owner              |
    And user clicks on reset all fields
    Then all fields should be cleared


       #FeatureID-ACAUTOCAS-10455
  Scenario:Reset all fields after filling advanced parameters in Lien Author
    And user open lien author page
    When user fills below fields
      | Source System  |
      | Application ID |
      | Host System    |
      | Account Number |
      | Deal ID        |
      | CIF Number     |
    And user reset all fields
    Then all fields should be clear



        #FeatureID-ACAUTOCAS-10455
  Scenario Outline: Sort the grid in ascending order on the basis of <GridColumn> in lien author
    And user open lien author page
    When sort the grid in ascending order on the basis of <GridColumn> in lien author
    Then collateral grid of lien author should be sorted in descending order
    Examples:
      | GridColumn                 |
      | Collateral Number          |
      | Collateral Type            |
      | Collateral SubType       . |
      | Collateral Ref No          |
      | Collateral Status          |
      | Owner                      |


        #FeatureID-ACAUTOCAS-10455
  Scenario Outline: Sort the grid in descending order on the basis of <GridColumn> in lien author
    And user open lien author page
    When sort the grid in descending order on the basis of <GridColumn> in lien author
    Then collateral grid of lien author should be sorted in descending order
    Examples:
      | GridColumn                 |
      | Collateral Number          |
      | Collateral Type            |
      | Collateral SubType       . |
      | Collateral Ref No          |
      | Collateral Status          |
      | Owner                      |


 #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Show the "<NumberOfRows>" rows of collateral grid in lien author
    And user open lien author page
    When user selects "<NumberOfRows>" number of rows to show collateral in lien author
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 100          | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
      | 100          | not display only available rows display | less      |



 #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Validating all Pagination in lien author
    And user open lien author page
    When "<Page>" page of grid is open
    Then "<Paginate_Btn>" should work successfully
    Examples:
      | Page  | Paginate_Btn             |
      | first | paginate_button next     |
      | last  | paginate_button previous |


      #FeatureID-ACAUTOCAS-10455
  Scenario Outline:All pagination button validation in lien author
    And user open lien author page
    When "<Page>" page of grid is open
    Then "<Paginate_Btn>" should be "<Enable_Disable>"
    Examples:
      | Page  | Paginate_Btn             | Enable_Disable |
      | first | paginate_button next     | enable         |
      | first | paginate_button previous | disable        |
      | last  | paginate_button next     | disable        |
      | last  | paginate_button previous | enable         |


      #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Search on the basis of more than one grid column in lien author
    And user open lien author page
    When user search application on the basis of "<Field1>" along with "<Feild2>" more than one grid column
    Then search would be done on the combination of those fields
    Examples:
      | Field1            | Feild2             |
      | Collateral Number | Collateral Type    |
      | Collateral Type   | Collateral SubType |


     #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Search on the basis of more than one advanced search parameter column in lien author
    And user open lien author page
    When user search application on the basis of "<Field1>" along with "<Feild2>" more than one grid column
    Then search would be done on the combination of those fields
    Examples:
      | Field1        | Feild2         |
      | Source System | Application ID |
      | Customer Name | Mobile Number  |



    #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Collateral SubType field validation in lien author
    And user open lien author page
    When user selects decision as "<CollateralType>"
    Then collateral sub type field values should be display based on selected collateral type
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


      #FeatureID-ACAUTOCAS-10455
  Scenario:Search without filling any search parameters in lien author
    And user open collateral investigation page
    When user clicks on search button
    Then an error should be occurred to select at least one search parameter


    #FeatureID-ACAUTOCAS-10455
  Scenario:Search without filling any advanced search parameters in lien author
    And user open collateral investigation page
    When user clicks on search button
    Then an error should be occurred to select at least one search parameter

#In case collateral attached with multiple application

  #FeatureID-ACAUTOCAS-10455
  Scenario:Application details validation in case collateral mapped with multiple application
    And user open lien author page
    When user expand the collateral which mapped with multiple applications
    Then following below columns should be present with correct data of application
      | GridColumn            |
      | Application/Split ID  |
      | Account Number        |
      | Customer Name       . |
      | Neo Cust ID           |
      | Deal ID               |
      | Branch                |
      | Source System         |



  #FeatureID-ACAUTOCAS-10455
  Scenario:Collaspe the expanded collateral in case collateral mapped with multiple application
    And user open lien author page
    When user expand the collateral which mapped with multiple applications
    And user collaspe the expanded collateral
    Then expanded collateral should be collaseped successfully





  #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Collateral details validation of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    Then following below field should be present in view mode
      | Fields                        |
      | Collateral Number             |
      | Collateral Reference Number   |
      | Collateral type               |
      | Collateral SubType            |
      | Hair Cut (%)                  |
      | Extension Ratio (%)           |
      | Collateral Value              |
      | Realisable Value              |
      | Collateral Coverage Ratio (%) |
      | Collateral Level LTV (%)      |
      | Last Valuation Date           |
      | Value Available for Pledge    |
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


      #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Lien details accordion validation of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user open lien details accordion
    Then a grid should be display having below columns
      | Fields               |
      | Institution Name     |
      | Application/Split ID |
      | Loan Account Number  |
      | Loan Amount          |
      | Current Outstanding  |
      | Lien Applicable On   |
      | Lien Percentage      |
      | Lien Amount          |
      | Margin Percentage    |
      | Secured Amount       |
      | Lien Status          |
      | Action               |
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |

   #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Lien status validation before lien marking approval of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user open lien details accordion
    Then lien status should be display as Pending for Approval
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |



      #FeatureID-ACAUTOCAS-10455
  Scenario Outline:View Lien details of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user open lien details accordion
    And user view lien details
    Then following field should be present in view mode
      | Fields                     |
      | Lien Reference Number      |
      | Internal/External          |
      | Institution Name           |
      | Source System              |
      | Host System                |
      | Application/Split ID       |
      | Loan Account Number        |
      | Customer Name              |
      | Loan Amount                |
      | Current Outstanding        |
      | Lien Applicable On         |
      | Product Type               |
      | Nature of Collateral       |
      | Lien Percentage            |
      | Lien Amount                |
      | Margin Percentage          |
      | Secured Amount             |
      | Value Available for Pledge |
      | Charge Type                |
      | Lien Marking Date          |
      | Lien Priority              |
#    Reason
      | Reason                     |
      | Reason Description         |
      | Comments                   |
#    Lien creation details
      | Created On                 |
      | Reviewed On                |
      | Created By                 |
      | Reviewed By                |
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |



      #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Cancel view Lien details of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user open lien details accordion
    And user view lien details
    And user click on cancel button
    Then lien details page should be hide
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


        #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Security details accordion validation of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user open security details accordion
    Then a grid should be display having below columns
      | Fields                     |
      | Security Created           |
      | Security Creation Date     |
      | Security Creation Due Date |
      | Security Registration Date |
      | Charge Expiry Date         |
      | Agreement Type             |
      | Agreement Sub Type         |
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


        #FeatureID-ACAUTOCAS-10455
  Scenario Outline:<Save&Proceed> lien details without filling decision of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user clicks on "<Save&Proceed>" button
    Then lien details should not be "<Save&Proceed>"
    Examples:
      | CollateralType        | Save&Proceed     |
      | Asset                 | Save             |
      | Deposit               | Save             |
      | Gold                  | Save             |
      | Government Securities | Save             |
      | Guarantee             | Save             |
      | Insurance             | Save             |
      | Land                  | Save             |
      | Property              | Save             |
      | Asset                 | Save And Proceed |
      | Deposit               | Save And Proceed |
      | Gold                  | Save And Proceed |
      | Government Securities | Save And Proceed |
      | Guarantee             | Save And Proceed |
      | Insurance             | Save And Proceed |
      | Land                  | Save And Proceed |
      | Property              | Save And Proceed |


       #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Add multiple reasons for <Decision> in lien details of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user add multiple reason for <Decision>
    Then multiple reasons should be added successfully
    Examples:
      | Decision  | CollateralType        |
      | Send Back | Asset                 |
      | Send Back | Deposit               |
      | Send Back | Gold                  |
      | Send Back | Government Securities |
      | Send Back | Guarantee             |
      | Send Back | Insurance             |
      | Send Back | Land                  |
      | Send Back | Property              |
      | Send Back | Asset                 |
      | Send Back | Deposit               |
      | Send Back | Gold                  |
      | Send Back | Government Securities |
      | Send Back | Guarantee             |
      | Send Back | Insurance             |
      | Send Back | Land                  |
      | Send Back | Property              |
      | Approved  | Asset                 |
      | Approved  | Deposit               |
      | Approved  | Gold                  |
      | Approved  | Government Securities |
      | Approved  | Guarantee             |
      | Approved  | Insurance             |
      | Approved  | Land                  |
      | Approved  | Property              |
      | Approved  | Asset                 |
      | Approved  | Deposit               |
      | Approved  | Gold                  |
      | Approved  | Government Securities |
      | Approved  | Guarantee             |
      | Approved  | Insurance             |
      | Approved  | Land                  |
      | Approved  | Property              |
      | Rejected  | Asset                 |
      | Rejected  | Deposit               |
      | Rejected  | Gold                  |
      | Rejected  | Government Securities |
      | Rejected  | Guarantee             |
      | Rejected  | Insurance             |
      | Rejected  | Land                  |
      | Rejected  | Property              |
      | Rejected  | Asset                 |
      | Rejected  | Deposit               |
      | Rejected  | Gold                  |
      | Rejected  | Government Securities |
      | Rejected  | Guarantee             |
      | Rejected  | Insurance             |
      | Rejected  | Land                  |
      | Rejected  | Property              |


           #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Delete more than one added reasons for <Decision> in lien details of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user delete more than one added reason for <Decision>
    Then added reasons should be deleted successfully
    Examples:
      | Decision  | CollateralType        |
      | Send Back | Asset                 |
      | Send Back | Deposit               |
      | Send Back | Gold                  |
      | Send Back | Government Securities |
      | Send Back | Guarantee             |
      | Send Back | Insurance             |
      | Send Back | Land                  |
      | Send Back | Property              |
      | Send Back | Asset                 |
      | Send Back | Deposit               |
      | Send Back | Gold                  |
      | Send Back | Government Securities |
      | Send Back | Guarantee             |
      | Send Back | Insurance             |
      | Send Back | Land                  |
      | Send Back | Property              |
      | Approved  | Asset                 |
      | Approved  | Deposit               |
      | Approved  | Gold                  |
      | Approved  | Government Securities |
      | Approved  | Guarantee             |
      | Approved  | Insurance             |
      | Approved  | Land                  |
      | Approved  | Property              |
      | Approved  | Asset                 |
      | Approved  | Deposit               |
      | Approved  | Gold                  |
      | Approved  | Government Securities |
      | Approved  | Guarantee             |
      | Approved  | Insurance             |
      | Approved  | Land                  |
      | Approved  | Property              |
      | Rejected  | Asset                 |
      | Rejected  | Deposit               |
      | Rejected  | Gold                  |
      | Rejected  | Government Securities |
      | Rejected  | Guarantee             |
      | Rejected  | Insurance             |
      | Rejected  | Land                  |
      | Rejected  | Property              |
      | Rejected  | Asset                 |
      | Rejected  | Deposit               |
      | Rejected  | Gold                  |
      | Rejected  | Government Securities |
      | Rejected  | Guarantee             |
      | Rejected  | Insurance             |
      | Rejected  | Land                  |
      | Rejected  | Property              |


       #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Reason Description field validation of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user selects reason as "<Reason>"
    Then reason description should be "<FieldNature>"
    Examples:
      | Reason           | FieldNature | CollateralType        |
      | any listed value | disabled    | Asset                 |
      | any listed value | auto filled | Asset                 |
      | other            | enable      | Asset                 |
      | any listed value | disabled    | Deposit               |
      | any listed value | auto filled | Deposit               |
      | other            | enable      | Deposit               |
      | any listed value | disabled    | Gold                  |
      | any listed value | auto filled | Gold                  |
      | other            | enable      | Gold                  |
      | any listed value | disabled    | Government Securities |
      | any listed value | auto filled | Government Securities |
      | other            | enable      | Government Securities |
      | any listed value | disabled    | Guarantee             |
      | any listed value | auto filled | Guarantee             |
      | other            | enable      | Guarantee             |
      | any listed value | disabled    | Insurance             |
      | any listed value | auto filled | Insurance             |
      | other            | enable      | Insurance             |
      | any listed value | disabled    | Land                  |
      | any listed value | auto filled | Land                  |
      | other            | enable      | Land                  |
      | any listed value | disabled    | Property              |
      | any listed value | auto filled | Property              |
      | other            | enable      | Property              |

 #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Comments field validation of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    When user fills comments field with "<Characters>" characters
    Then "<Left_Characters>" characters should be remaining to fill in comment field
    Examples:
      | Characters | Left_Characters | CollateralType        |
      | 1000       | 3000            | Asset                 |
      | 2000       | 2000            | Asset                 |
      | 4000       | 0               | Asset                 |
      | 1000       | 3000            | Deposit               |
      | 2000       | 2000            | Deposit               |
      | 4000       | 0               | Deposit               |
      | 1000       | 3000            | Gold                  |
      | 2000       | 2000            | Gold                  |
      | 4000       | 0               | Gold                  |
      | 1000       | 3000            | Government Securities |
      | 2000       | 2000            | Government Securities |
      | 4000       | 0               | Government Securities |
      | 1000       | 3000            | Guarantee             |
      | 2000       | 2000            | Guarantee             |
      | 4000       | 0               | Guarantee             |
      | 1000       | 3000            | Insurance             |
      | 2000       | 2000            | Insurance             |
      | 4000       | 0               | Insurance             |
      | 1000       | 3000            | Land                  |
      | 2000       | 2000            | Land                  |
      | 4000       | 0               | Land                  |
      | 1000       | 3000            | Property              |
      | 2000       | 2000            | Property              |
      | 4000       | 0               | Property              |


#    Lien History Details:

         #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Lien details history validation of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    Then history grid should be displayed having below columns
      | HistoryColumns        |
      | Lien Reference Number |
      | Institution Name      |
      | Application/Split ID  |
      | Loan Account Number   |
      | Loan Amount           |
      | Current Outstanding   |
      | Lien Applicable On    |
      | Lien Percentage       |
      | Lien Amount           |
      | Margin Percentage     |
      | Secured Amount        |
      | Lien Status           |
      | Maker Decision        |
      | Author Decision       |
      | Created By            |
      | Created On            |
      | Reviewed By           |
      | Reviewed On           |
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |

#grid scenario can be written in history grid
#Deposit
#Dynamic
#Gold
#Government Securities
#Guarantee
#Insurance
#Land
#Property

        #FeatureID-ACAUTOCAS-10455
  Scenario Outline: Sort the lien history grid in ascending order on the basis of <GridColumn> in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When sort the grid in ascending order on the basis of <GridColumn> in lien author
    Then lien history grid should be sorted in descending order
    Examples:
      | GridColumn                 | CollateralType        |
      | Collateral Number          | Asset                 |
      | Collateral Type            | Asset                 |
      | Collateral SubType       . | Asset                 |
      | Collateral Ref No          | Asset                 |
      | Collateral Status          | Asset                 |
      | Owner                      | Asset                 |
      | Collateral Number          | Deposit               |
      | Collateral Type            | Deposit               |
      | Collateral SubType       . | Deposit               |
      | Collateral Ref No          | Deposit               |
      | Collateral Status          | Deposit               |
      | Owner                      | Deposit               |
      | Collateral Number          | Gold                  |
      | Collateral Type            | Gold                  |
      | Collateral SubType       . | Gold                  |
      | Collateral Ref No          | Gold                  |
      | Collateral Status          | Gold                  |
      | Owner                      | Gold                  |
      | Collateral Number          | Government Securities |
      | Collateral Type            | Government Securities |
      | Collateral SubType       . | Government Securities |
      | Collateral Ref No          | Government Securities |
      | Collateral Status          | Government Securities |
      | Owner                      | Government Securities |
      | Collateral Number          | Guarantee             |
      | Collateral Type            | Guarantee             |
      | Collateral SubType       . | Guarantee             |
      | Collateral Ref No          | Guarantee             |
      | Collateral Status          | Guarantee             |
      | Owner                      | Guarantee             |
      | Collateral Number          | Insurance             |
      | Collateral Type            | Insurance             |
      | Collateral SubType       . | Insurance             |
      | Collateral Ref No          | Insurance             |
      | Collateral Status          | Insurance             |
      | Owner                      | Insurance             |
      | Collateral Number          | Land                  |
      | Collateral Type            | Land                  |
      | Collateral SubType       . | Land                  |
      | Collateral Ref No          | Land                  |
      | Collateral Status          | Land                  |
      | Owner                      | Land                  |
      | Collateral Number          | Property              |
      | Collateral Type            | Property              |
      | Collateral SubType       . | Property              |
      | Collateral Ref No          | Property              |
      | Collateral Status          | Property              |
      | Owner                      | Property              |



        #FeatureID-ACAUTOCAS-10455
  Scenario Outline: Sort the lien history grid in descending order on the basis of <GridColumn> in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When sort the lien history grid in descending order on the basis of <GridColumn> in lien author
    Then lien history grid should be sorted in descending order
    Examples:
      | GridColumn                 | CollateralType        |
      | Collateral Number          | Asset                 |
      | Collateral Type            | Asset                 |
      | Collateral SubType       . | Asset                 |
      | Collateral Ref No          | Asset                 |
      | Collateral Status          | Asset                 |
      | Owner                      | Asset                 |
      | Collateral Number          | Deposit               |
      | Collateral Type            | Deposit               |
      | Collateral SubType       . | Deposit               |
      | Collateral Ref No          | Deposit               |
      | Collateral Status          | Deposit               |
      | Owner                      | Deposit               |
      | Collateral Number          | Gold                  |
      | Collateral Type            | Gold                  |
      | Collateral SubType       . | Gold                  |
      | Collateral Ref No          | Gold                  |
      | Collateral Status          | Gold                  |
      | Owner                      | Gold                  |
      | Collateral Number          | Government Securities |
      | Collateral Type            | Government Securities |
      | Collateral SubType       . | Government Securities |
      | Collateral Ref No          | Government Securities |
      | Collateral Status          | Government Securities |
      | Owner                      | Government Securities |
      | Collateral Number          | Guarantee             |
      | Collateral Type            | Guarantee             |
      | Collateral SubType       . | Guarantee             |
      | Collateral Ref No          | Guarantee             |
      | Collateral Status          | Guarantee             |
      | Owner                      | Guarantee             |
      | Collateral Number          | Insurance             |
      | Collateral Type            | Insurance             |
      | Collateral SubType       . | Insurance             |
      | Collateral Ref No          | Insurance             |
      | Collateral Status          | Insurance             |
      | Owner                      | Insurance             |
      | Collateral Number          | Land                  |
      | Collateral Type            | Land                  |
      | Collateral SubType       . | Land                  |
      | Collateral Ref No          | Land                  |
      | Collateral Status          | Land                  |
      | Owner                      | Land                  |
      | Collateral Number          | Property              |
      | Collateral Type            | Property              |
      | Collateral SubType       . | Property              |
      | Collateral Ref No          | Property              |
      | Collateral Status          | Property              |
      | Owner                      | Property              |



 #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Show the "<NumberOfRows>" rows of lien history grid in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When user selects "<NumberOfRows>" number of rows to show lien details in lien author
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less | CollateralType        |
      | 10           | display                                 | more      | Asset                 |
      | 25           | display                                 | more      | Asset                 |
      | 50           | display                                 | more      | Asset                 |
      | 100          | display                                 | more      | Asset                 |
      | 10           | not display only available rows display | less      | Asset                 |
      | 25           | not display only available rows display | less      | Asset                 |
      | 50           | not display only available rows display | less      | Asset                 |
      | 100          | not display only available rows display | less      | Asset                 |
      | 10           | display                                 | more      | Deposit               |
      | 25           | display                                 | more      | Deposit               |
      | 50           | display                                 | more      | Deposit               |
      | 100          | display                                 | more      | Deposit               |
      | 10           | not display only available rows display | less      | Deposit               |
      | 25           | not display only available rows display | less      | Deposit               |
      | 50           | not display only available rows display | less      | Deposit               |
      | 100          | not display only available rows display | less      | Deposit               |
      | 10           | display                                 | more      | Gold                  |
      | 25           | display                                 | more      | Gold                  |
      | 50           | display                                 | more      | Gold                  |
      | 100          | display                                 | more      | Gold                  |
      | 10           | not display only available rows display | less      | Gold                  |
      | 25           | not display only available rows display | less      | Gold                  |
      | 50           | not display only available rows display | less      | Gold                  |
      | 100          | not display only available rows display | less      | Gold                  |
      | 10           | display                                 | more      | Government Securities |
      | 25           | display                                 | more      | Government Securities |
      | 50           | display                                 | more      | Government Securities |
      | 100          | display                                 | more      | Government Securities |
      | 10           | not display only available rows display | less      | Government Securities |
      | 25           | not display only available rows display | less      | Government Securities |
      | 50           | not display only available rows display | less      | Government Securities |
      | 100          | not display only available rows display | less      | Government Securities |
      | 10           | display                                 | more      | Guarantee             |
      | 25           | display                                 | more      | Guarantee             |
      | 50           | display                                 | more      | Guarantee             |
      | 100          | display                                 | more      | Guarantee             |
      | 10           | not display only available rows display | less      | Guarantee             |
      | 25           | not display only available rows display | less      | Guarantee             |
      | 50           | not display only available rows display | less      | Guarantee             |
      | 100          | not display only available rows display | less      | Guarantee             |
      | 10           | display                                 | more      | Insurance             |
      | 25           | display                                 | more      | Insurance             |
      | 50           | display                                 | more      | Insurance             |
      | 100          | display                                 | more      | Insurance             |
      | 10           | not display only available rows display | less      | Insurance             |
      | 25           | not display only available rows display | less      | Insurance             |
      | 50           | not display only available rows display | less      | Insurance             |
      | 100          | not display only available rows display | less      | Insurance             |
      | 10           | display                                 | more      | Land                  |
      | 25           | display                                 | more      | Land                  |
      | 50           | display                                 | more      | Land                  |
      | 100          | display                                 | more      | Land                  |
      | 10           | not display only available rows display | less      | Land                  |
      | 25           | not display only available rows display | less      | Land                  |
      | 50           | not display only available rows display | less      | Land                  |
      | 100          | not display only available rows display | less      | Land                  |
      | 10           | display                                 | more      | Property              |
      | 25           | display                                 | more      | Property              |
      | 50           | display                                 | more      | Property              |
      | 100          | display                                 | more      | Property              |
      | 10           | not display only available rows display | less      | Property              |
      | 25           | not display only available rows display | less      | Property              |
      | 50           | not display only available rows display | less      | Property              |
      | 100          | not display only available rows display | less      | Property              |




 #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Validating all Pagination of lien history grid in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When "<Page>" page of lien history grid is open
    Then "<Paginate_Btn>" should work successfully
    Examples:
      | Page  | Paginate_Btn             | CollateralType        |
      | first | paginate_button next     | Asset                 |
      | last  | paginate_button previous | Asset                 |
      | first | paginate_button next     | Deposit               |
      | last  | paginate_button previous | Deposit               |
      | first | paginate_button next     | Gold                  |
      | last  | paginate_button previous | Gold                  |
      | first | paginate_button next     | Government Securities |
      | last  | paginate_button previous | Government Securities |
      | first | paginate_button next     | Guarantee             |
      | last  | paginate_button previous | Guarantee             |
      | first | paginate_button next     | Insurance             |
      | last  | paginate_button previous | Insurance             |
      | first | paginate_button next     | Land                  |
      | last  | paginate_button previous | Land                  |
      | first | paginate_button next     | Property              |
      | last  | paginate_button previous | Property              |




      #FeatureID-ACAUTOCAS-10455
  Scenario Outline:All pagination button validation of lien history grid in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When "<Page>" page of lien history grid is open
    Then "<Paginate_Btn>" should be "<Enable_Disable>"
    Examples:
      | Page  | Paginate_Btn             | Enable_Disable | CollateralType        |
      | first | paginate_button next     | enable         | Asset                 |
      | first | paginate_button previous | disable        | Asset                 |
      | last  | paginate_button next     | disable        | Asset                 |
      | last  | paginate_button previous | enable         | Asset                 |
      | first | paginate_button next     | enable         | Deposit               |
      | first | paginate_button previous | disable        | Deposit               |
      | last  | paginate_button next     | disable        | Deposit               |
      | last  | paginate_button previous | enable         | Deposit               |
      | first | paginate_button next     | enable         | Gold                  |
      | first | paginate_button previous | disable        | Gold                  |
      | last  | paginate_button next     | disable        | Gold                  |
      | last  | paginate_button previous | enable         | Gold                  |
      | first | paginate_button next     | enable         | Government Securities |
      | first | paginate_button previous | disable        | Government Securities |
      | last  | paginate_button next     | disable        | Government Securities |
      | last  | paginate_button previous | enable         | Government Securities |
      | first | paginate_button next     | enable         | Guarantee             |
      | first | paginate_button previous | disable        | Guarantee             |
      | last  | paginate_button next     | disable        | Guarantee             |
      | last  | paginate_button previous | enable         | Guarantee             |
      | first | paginate_button next     | enable         | Insurance             |
      | first | paginate_button previous | disable        | Insurance             |
      | last  | paginate_button next     | disable        | Insurance             |
      | last  | paginate_button previous | enable         | Insurance             |
      | first | paginate_button next     | enable         | Land                  |
      | first | paginate_button previous | disable        | Land                  |
      | last  | paginate_button next     | disable        | Land                  |
      | last  | paginate_button previous | enable         | Land                  |
      | first | paginate_button next     | enable         | Property              |
      | first | paginate_button previous | disable        | Property              |
      | last  | paginate_button next     | disable        | Property              |
      | last  | paginate_button previous | enable         | Property              |


   #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Minimize the lien details history page of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When user minimize the lien details history
    Then lien details history page should be minimized successfully
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


   #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Maximize the minimized the lien details history page of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When user maximize the minimized lien details history
    Then lien details history page should be maximized successfully
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


     #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Close the lien details history page of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When user close the lien details history
    Then lien details history page should be closed successfully
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |




    #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Lien status validation before lien marking approval in ien details history of "<CollateralType>" in lien author
    And user open lien author page
    When user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    Then lien status should be display as Pending for Approval
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


    #FeatureID-ACAUTOCAS-10455
  Scenario Outline:View maker decision details in ien details history of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When user view maker decision details
    Then maker decision details should be display having following fields
      | DecisionField      |
      | Reason             |
      | Reason Description |
      | Comments           |
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |

   #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Minimize the maker decision details of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    And user view maker decision details
    When user minimize the maker decision details
    Then maker decision details should be minimized successfully
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


  #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Maximize the minimized the maker decision details of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    And user view maker decision details
    When user maximize the minimized maker decision details
    Then maker decision details should be maximized successfully
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


    #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Close the maker decision details of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    And user view maker decision details
    When user close the maker decision details
    Then maker decision details should be closed successfully
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |



  #FeatureID-ACAUTOCAS-10455
  Scenario Outline:View author decision details in ien details history of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When user view author decision details
    Then author decision details should be display having following fields
      | DecisionField      |
      | Decision           |
      | Reason             |
      | Reason Description |
      | Comments           |
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


      #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Minimize the author decision details of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    And user view author decision details
    When user minimize the author decision details
    Then author decision details should be minimized successfully
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


      #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Maximize the minimized the author decision details of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    And user view author decision details
    When user maximize the minimized maker decision details
    Then author decision details should be maximized successfully
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |

   #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Close the author decision details of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    And user view author decision details
    When user close the author decision details
    Then author decision details should be closed successfully
    Examples:
      | CollateralType        |
      | Asset                 |
      | Deposit               |
      | Gold                  |
      | Government Securities |
      | Guarantee             |
      | Insurance             |
      | Land                  |
      | Property              |


 #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Reason field validation of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    And user clicks on lien details history button
    When user selects decision as "<Decision>"
    Then reason field values should be display based on selected decision
    Examples:
      | CollateralType        | Decision  |
      | Asset                 | Send Back |
      | Deposit               | Send Back |
      | Gold                  | Send Back |
      | Government Securities | Send Back |
      | Guarantee             | Send Back |
      | Insurance             | Send Back |
      | Land                  | Send Back |
      | Property              | Send Back |
      | Asset                 | Approved  |
      | Deposit               | Approved  |
      | Gold                  | Approved  |
      | Government Securities | Approved  |
      | Guarantee             | Approved  |
      | Insurance             | Approved  |
      | Land                  | Approved  |
      | Property              | Approved  |
      | Asset                 | Rejected  |
      | Deposit               | Rejected  |
      | Gold                  | Rejected  |
      | Government Securities | Rejected  |
      | Guarantee             | Rejected  |
      | Insurance             | Rejected  |
      | Land                  | Rejected  |
      | Property              | Rejected  |



     #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Author <Decision> the lien marking of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    When user "<Decision>" the lien marking of "<CollateralType>"
    And user save_proceed the author decision
    Then lien marking should be "<Decision>" successfully
    Examples:
      | CollateralType        | Decision  |
      | Asset                 | Send Back |
      | Deposit               | Send Back |
      | Gold                  | Send Back |
      | Government Securities | Send Back |
      | Guarantee             | Send Back |
      | Insurance             | Send Back |
      | Land                  | Send Back |
      | Property              | Send Back |
      | Asset                 | Approved  |
      | Deposit               | Approved  |
      | Gold                  | Approved  |
      | Government Securities | Approved  |
      | Guarantee             | Approved  |
      | Insurance             | Approved  |
      | Land                  | Approved  |
      | Property              | Approved  |
      | Asset                 | Rejected  |
      | Deposit               | Rejected  |
      | Gold                  | Rejected  |
      | Government Securities | Rejected  |
      | Guarantee             | Rejected  |
      | Insurance             | Rejected  |
      | Land                  | Rejected  |
      | Property              | Rejected  |



  #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Lien Author grid validation after <Decision> the lien marking of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    When user "<Decision>" the lien marking of "<CollateralType>"
    And user save_proceed the author decision
    Then collateral should not be present in grid
    Examples:
      | CollateralType        | Decision  |
      | Asset                 | Send Back |
      | Deposit               | Send Back |
      | Gold                  | Send Back |
      | Government Securities | Send Back |
      | Guarantee             | Send Back |
      | Insurance             | Send Back |
      | Land                  | Send Back |
      | Property              | Send Back |
      | Asset                 | Approved  |
      | Deposit               | Approved  |
      | Gold                  | Approved  |
      | Government Securities | Approved  |
      | Guarantee             | Approved  |
      | Insurance             | Approved  |
      | Land                  | Approved  |
      | Property              | Approved  |
      | Asset                 | Rejected  |
      | Deposit               | Rejected  |
      | Gold                  | Rejected  |
      | Government Securities | Rejected  |
      | Guarantee             | Rejected  |
      | Insurance             | Rejected  |
      | Land                  | Rejected  |
      | Property              | Rejected  |


   #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Lien Author grid validation after saving the author decision as <Decision> of "<CollateralType>" in lien author
    And user open lien author page
    And user open an application having collateral type "<CollateralType>"
    When user "<Decision>" the lien marking of "<CollateralType>"
    And user save author decision
    Then saved author decision collateral status should be Save As Draft in grid
    Examples:
      | CollateralType        | Decision  |
      | Asset                 | Send Back |
      | Deposit               | Send Back |
      | Gold                  | Send Back |
      | Government Securities | Send Back |
      | Guarantee             | Send Back |
      | Insurance             | Send Back |
      | Land                  | Send Back |
      | Property              | Send Back |
      | Asset                 | Approved  |
      | Deposit               | Approved  |
      | Gold                  | Approved  |
      | Government Securities | Approved  |
      | Guarantee             | Approved  |
      | Insurance             | Approved  |
      | Land                  | Approved  |
      | Property              | Approved  |
      | Asset                 | Rejected  |
      | Deposit               | Rejected  |
      | Gold                  | Rejected  |
      | Government Securities | Rejected  |
      | Guarantee             | Rejected  |
      | Insurance             | Rejected  |
      | Land                  | Rejected  |
      | Property              | Rejected  |

#E2E
     #${ ProductType : ["MHF","IHF","LAP","HL"]}
    #${ ApplicationStage:["Post Approval","Disbursal"]}
   #${ ApplicantType:["Individual","Non Individual"]}
    #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Approve lien marking of property of <ApplicationStage> stage application of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user open loan details tab
    And user open property details
    And user add collateral with "<CollateralSubType>" collateral sub type
    And user fills lien details
    And user send lien marking for approval
    And  another user open lien author page
    And user search the lien marked application from advanced search parameter
    And user open the collateral
    When author approved the lien marking decision
    Then lien marking decision should be approved successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | CollateralSubType                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Builder Property Under Construction |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Construction On Land                |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Plot + Self Construction            |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Purchase a Plot                     |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Ready Property                      |


     #${ ProductType : ["MHF","IHF","LAP","HL"]}
    #${ ApplicationStage:["Post Approval","Disbursal"]}
   #${ ApplicantType:["Individual","Non Individual"]}
     #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Lien details validation of property of <ApplicationStage> stage application of <ProductType> in lien author
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user open loan details tab
    And user open property details
    And user add collateral with "<CollateralSubType>" collateral sub type
    And user fills lien details
    And user send lien marking for approval
    When another user open sent lien marking collateral
    And user open lien details accordion
    And user view lien details
    Then following field should be present in view mode as filled while lien marking
      | Fields                     |
      | Lien Reference Number      |
      | Internal/External          |
      | Institution Name           |
      | Source System              |
      | Host System                |
      | Application/Split ID       |
      | Loan Account Number        |
      | Customer Name              |
      | Loan Amount                |
      | Current Outstanding        |
      | Lien Applicable On         |
      | Product Type               |
      | Nature of Collateral       |
      | Lien Percentage            |
      | Lien Amount                |
      | Margin Percentage          |
      | Secured Amount             |
      | Value Available for Pledge |
      | Charge Type                |
      | Lien Marking Date          |
      | Lien Priority              |
    Examples:
      | CollateralSubType                   | ApplicationStage   | ProductType   | ApplicantType   |
      | Builder Property Under Construction | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Construction On Land                | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Plot + Self Construction            | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Purchase a Plot                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Ready Property                      | <ApplicationStage> | <ProductType> | <ApplicantType> |


#    Asset details lien

     #${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
    #${ ApplicationStage:["Post Approval","Disbursal"]}
   #${ ApplicantType:["Individual","Non Individual"]}
   #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Approve lien marking of asset of <ApplicationStage> stage application of <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user open loan details tab
    And user open property details
    And user add collateral with "<CollateralSubType>" collateral sub type
    And user fills lien details
    And user send lien marking for approval
    And  another user open lien author page
    And user search the lien marked application from advanced search parameter
    And user open the collateral
    When author approved the lien marking decision
    Then lien marking decision should be approved successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | CollateralSubType |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | Consumer Vehicle  |



     #${ ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
    #${ ApplicationStage:["Post Approval","Disbursal"]}
   #${ ApplicantType:["Individual","Non Individual"]}
     #FeatureID-ACAUTOCAS-10455
  Scenario Outline:Lien details validation of asset of <ApplicationStage> stage application of <ProductType> in lien author
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user open loan details tab
    And user open property details
    And user add collateral with "<CollateralSubType>" collateral sub type
    And user fills lien details
    And user send lien marking for approval
    When another user open sent lien marking collateral
    And user open lien details accordion
    And user view lien details
    Then following field should be present in view mode as filled while lien marking
      | Fields                     |
      | Lien Reference Number      |
      | Internal/External          |
      | Institution Name           |
      | Source System              |
      | Host System                |
      | Application/Split ID       |
      | Loan Account Number        |
      | Customer Name              |
      | Loan Amount                |
      | Current Outstanding        |
      | Lien Applicable On         |
      | Product Type               |
      | Nature of Collateral       |
      | Lien Percentage            |
      | Lien Amount                |
      | Margin Percentage          |
      | Secured Amount             |
      | Value Available for Pledge |
      | Charge Type                |
      | Lien Marking Date          |
      | Lien Priority              |
    Examples:
      | CollateralSubType | ApplicationStage   | ProductType   | ApplicantType   |
      | Consumer Vehicle  | <ApplicationStage> | <ProductType> | <ApplicantType> |
#reject application