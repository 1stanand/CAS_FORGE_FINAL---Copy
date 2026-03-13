@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-vipin.kishor
@TechReviewedBy-
@NotImplemented
  @new
Feature:CII grid

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-365
  Scenario:Collateral investigation initiation grid column
    When user open collateral investigation page
    Then following grid column should be present
      | Application ID     |
      | Neo Cust ID        |
      | Identification No. |
      | Customer Name      |
      | Product Type       |
      | Product Name       |
      | Scheme             |
      | Request Type       |
      | Phone No.          |
      | Initiated On       |
      | Last Update On     |
      | Sourcing Date      |
      | Sourcing Channel   |
      | Created By         |
      | Priority           |


       #FeatureID-ACAUTOCAS-365
  Scenario Outline:Search on the basis of <GridColumn> in CII grid
    And user open collateral investigation page
    When user search application on the basis of "<GridColumn>" in CII grid
    Then application should be display in grid
    Examples:
      | GridColumn         |
      | Application ID     |
      | Neo Cust ID        |
      | Identification No. |
      | Customer Name      |
      | Product Type       |
      | Product Name       |
      | Scheme             |
      | Request Type       |
      | Phone No.          |
      | Initiated On       |
      | Last Update On     |
      | Sourcing Channel   |
      | Priority           |


        #FeatureID-ACAUTOCAS-365
  @SearchVip
  Scenario Outline:Sort the grid in ascending order on the basis of <GridColumn> in CII grid
    And user open collateral investigation page
    When sort the grid in ascending order on the basis of "<GridColumn>" in CII grid
    Then collateral investigation initiation grid should be sort in ascending order on the basis of "<GridColumn>"
    Examples:
      | GridColumn         |
      | Application ID     |
      | Neo Cust ID        |
      | Identification No. |
      | Customer Name      |
      | Product Type       |
      | Product Name       |
      | Scheme             |
      | Request Type       |
      | Phone No.          |
      | Initiated On       |
      | Last Update On     |
      | Sourcing Channel   |
      | Priority           |


        #FeatureID-ACAUTOCAS-365
  Scenario Outline:Sort the grid in descending order on the basis of <GridColumn> in CII grid
    And user open collateral investigation page
    When Sort the grid in descending order the basis of <GridColumn> in CII grid
    Then collateral investigation initiation grid should be sort in descending order
    Examples:
      | GridColumn         |
      | Application ID     |
      | Neo Cust ID        |
      | Identification No. |
      | Customer Name      |
      | Product Type       |
      | Product Name       |
      | Scheme             |
      | Request Type       |
      | Phone No.          |
      | Initiated On       |
      | Last Update On     |
      | Sourcing Channel   |
      | Priority           |

   #FeatureID-ACAUTOCAS-365
#  duplicate
  Scenario Outline:Filter the application on the basis of <GridColumn> in CII grid
    And user open collateral investigation page
    When filter the application on the basis of <GridColumn> in CII grid
    Then application should be filtered
    Examples:
      | GridColumn         |
      | Application ID     |
      | Neo Cust ID        |
      | Identification No. |
      | Customer Name      |
      | Product Type       |
      | Product Name       |
      | Scheme             |
      | Request Type       |
      | Phone No.          |
      | Initiated On       |
      | Last Update On     |
      | Sourcing Channel   |
      | Priority           |

      #FeatureID-ACAUTOCAS-365

  Scenario Outline:Clear filter form the grid after applying on <GridColumn> in CII grid
    And user open collateral investigation page
    When clear filter form "<GridColumn>" in CII grid
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    Then filter should be removed
    Examples:
      | GridColumn         | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum |
      | Application ID     | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Neo Cust ID        | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Identification No. | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Customer Name      | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Product Type       | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Product Name       | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Scheme             | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Request Type       | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Phone No.          | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Initiated On       | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Last Update On     | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Sourcing Channel   | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |
      | Priority           | collateral_investigation_initiation.xlsx | cii_grid    | 0                  |


       #FeatureID-ACAUTOCAS-365
  Scenario:Save search name in CII grid
    And user open collateral investigation page
    When user save search name in CII grid
    Then save search name should be saved successfully

       #FeatureID-ACAUTOCAS-365
  Scenario:Save search validation in Load search in CII grid
    And user open collateral investigation page
    When user save search name in CII grid
    And user checks save search name in load search
    Then save search name should be present in load search

#    Remove save search

  #FeatureID-ACAUTOCAS-365
  Scenario:Load search in CII grid
    And user open collateral investigation page
    When user Load search in CII grid
    Then Load search should be searched successfully

#FeatureID-ACAUTOCAS-365
  Scenario Outline:Export the CII grid as <Excel_CSV>
    And user open collateral investigation page
    When user export the CII grid as "<Excel_CSV>"
    Then CII grid should be exported as "<Excel_CSV>"
    Examples:
      | Excel_CSV |
      | Excel     |
      | CSV       |

#FeatureID-ACAUTOCAS-365
  Scenario Outline:Validated the number of rows in Exported <Excel_CSV> file
    And user open collateral investigation page
    When user export the CII grid as "<Excel_CSV>"
    Then number of rows in Exported <Excel_CSV> file should be matched with CII grid
    Examples:
      | Excel_CSV |
      | Excel     |
      | CSV       |

#FeatureID-ACAUTOCAS-365
  Scenario:Copy the CII grid details
    And user open collateral investigation page
    When user Copy the CII grid
    Then CII grid details should be copied successfully

#FeatureID-ACAUTOCAS-365
  Scenario Outline:Show the "<NumberOfRows>" rows of CII grid
    And user open collateral investigation page
    When user selects "<NumberOfRows>" number of rows to show CII in grid
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |

#FeatureID-ACAUTOCAS-365
  Scenario Outline:Copy the CII grid details after showing the "<NumberOfRows>" rows
    And user open collateral investigation page
    When user selects "<NumberOfRows>" number of rows to show CII in grid
    And user Copy the CII grid
    Then selected "<NumberOfRows>" rows "<Copied>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Copied                                | More_Less |
      | 10           | copied                                | more      |
      | 25           | copied                                | more      |
      | 50           | copied                                | more      |
      | 10           | not copied only available rows copied | less      |
      | 25           | not copied only available rows copied | less      |
      | 50           | not copied only available rows copied | less      |

 #FeatureId-ACAUTOCAS-365
  Scenario Outline:Validating all Pagination in CII grid
    And user open collateral investigation page
    When "<Page>" page of CII grid is open
    Then "<Paginate_Btn>" should work successfully
    Examples:
      | Page  | Paginate_Btn             |
      | first | paginate_button next     |
      | first | paginate_button last     |
      | last  | paginate_button previous |
      | last  | paginate_button first    |

      #FeatureId-ACAUTOCAS-365
  Scenario Outline:All pagination button validation in CII grid
    And user open collateral investigation page
    When "<Page>" page of CII grid is open
    Then "<Paginate_Btn>" should be "<Enable_Disable>"
    Examples:
      | Page  | Paginate_Btn             | Enable_Disable |
      | first | paginate_button next     | enable         |
      | first | paginate_button last     | enable         |
      | first | paginate_button previous | disable        |
      | first | paginate_button first    | disable        |
      | last  | paginate_button last     | enable         |
      | last  | paginate_button previous | enable         |
      | last  | paginate_button next     | disable        |
      | last  | paginate_button last     | disable        |

  #FeatureID-ACAUTOCAS-365
  Scenario:Search on the basis of more than one grid column in CII grid
    And user open collateral investigation page
    When user search application on the basis of more than one grid column
    Then search would be done on the combination of those grid column

   #FeatureID-ACAUTOCAS-365
  Scenario:Last Update On column validation in CII grid
    And user open collateral investigation page
    And user open an application to initiate collateral investigation
    And user make some changes in application
    When user checks application in CII grid
    Then Last Update On date should be display correctly as per last update

  #Saved Key already exists  need to cover