@Epic-Collateral_Investigation
@AuthoredBy-vipin.kishor
@ReviewedBy-
@ImplementedBy-vipin.kishor
@TechReviewedBy-
@NotImplemented
Feature:Collateral investigation completion grid

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

    #FeatureID-ACAUTOCAS-14208
  Scenario:Collateral investigation completion grid column
    And user open collateral investigation completion page
    When user open an application to initiate collateral investigation
    Then following grid column should be present
      | GridColumn          |
      | Application ID      |
      | Collateral ID       |
      | Collateral Number   |
      | completion Type   |
      | Collateral Type     |
      | Collateral Sub Type |
      | Initiated On        |
      | Last Update On      |
      | Action              |


       #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Search on the basis of <GridColumn> in CIC grid
    And user open collateral investigation completion page
    When user search application on the basis of <GridColumn> in CIC grid
    Then application should be display in grid
    Examples:
      | GridColumn          |
      | Application ID      |
      | Collateral ID       |
      | Collateral Number   |
      | completion Type   |
      | Collateral Type     |
      | Collateral Sub Type |
      | Initiated On        |
      | Last Update On      |


        #FeatureID-ACAUTOCAS-14208
  Scenario Outline: Sort the grid in ascending order on the basis of <GridColumn> in CIC grid
    And user open collateral investigation completion page
    When Sort the grid in ascending order the basis of <GridColumn> in CIC grid
    Then collateral investigation initiation grid should be sort in ascending order
    Examples:
      | GridColumn          |
      | Application ID      |
      | Collateral ID       |
      | Collateral Number   |
      | completion Type   |
      | Collateral Type     |
      | Collateral Sub Type |
      | Initiated On        |
      | Last Update On      |




        #FeatureID-ACAUTOCAS-14208
  Scenario Outline: Sort the grid in descending order on the basis of <GridColumn> in CIC grid
    And user open collateral investigation completion page
    When Sort the grid in descending order the basis of <GridColumn> in CIC grid
    Then collateral investigation initiation grid should be sort in descending order
    Examples:
      | GridColumn          |
      | Application ID      |
      | Collateral ID       |
      | Collateral Number   |
      | completion Type   |
      | Collateral Type     |
      | Collateral Sub Type |
      | Initiated On        |
      | Last Update On      |



   #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Filter the application on the basis of  <GridColumn> in CIC grid
    And user open collateral investigation completion page
    When Filter the application on the basis of <GridColumn> in CIC grid
    Then application should be filtered
    Examples:
      | GridColumn          |
      | Application ID      |
      | Collateral ID       |
      | Collateral Number   |
      | completion Type   |
      | Collateral Type     |
      | Collateral Sub Type |
      | Initiated On        |
      | Last Update On      |


     #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Clear filter form the grid after applying on <GridColumn> in CIC grid
    And user open collateral investigation completion page
    When clear filter form <GridColumn> in CIC grid
    Then filter should be removed form <GridColumn>
    Examples:
      | GridColumn          |
      | Application ID      |
      | Collateral ID       |
      | Collateral Number   |
      | completion Type   |
      | Collateral Type     |
      | Collateral Sub Type |
      | Initiated On        |
      | Last Update On      |

   #FeatureID-ACAUTOCAS-14208
  Scenario:Save search name in CIC grid
    And user open collateral investigation completion page
    When user save search name in CIC grid
    Then save search name should be saved successfully

  #FeatureID-ACAUTOCAS-14208
  Scenario:Load search in CIC grid
    And user open collateral investigation completion page
    When user Load search in CIC grid
    Then Load search should be searched successfully

 #FeatureId-ACAUTOCAS-14208
  Scenario Outline:Export the CIC grid as <Excel_CSV>
    And user open collateral investigation completion page
    When user export the CIC grid as "<Excel_CSV>"
    Then CIC grid should be exported as "<Excel_CSV>"
    Examples:
      | Excel_CSV |
      | Excel     |
      | CSV       |

 #FeatureId-ACAUTOCAS-14208
  Scenario Outline:Validated the number of rows in Exported <Excel_CSV> file
    And user open collateral investigation completion page
    When user export the CIC grid as "<Excel_CSV>"
    Then number of rows in Exported <Excel_CSV> file should be matched with CIC grid
    Examples:
      | Excel_CSV |
      | Excel     |
      | CSV       |
 #FeatureId-ACAUTOCAS-14208
  Scenario:Copy the CIC grid details
    And user open collateral investigation completion page
    When user Copy the CIC grid
    Then CIC grid details should be copied successfully
 #FeatureId-ACAUTOCAS-14208
  Scenario Outline:Show the "<NumberOfRows>" rows of CIC grid
    And user open collateral investigation completion page
    When user selects "<NumberOfRows>" number of rows to show CIC in grid
    Then selected "<NumberOfRows>" rows "<Display>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Display                                 | More_Less |
      | 10           | display                                 | more      |
      | 25           | display                                 | more      |
      | 50           | display                                 | more      |
      | 10           | not display only available rows display | less      |
      | 25           | not display only available rows display | less      |
      | 50           | not display only available rows display | less      |
 #FeatureId-ACAUTOCAS-14208
  Scenario Outline:Copy the CIC grid details after showing the "<NumberOfRows>" rows
    And user open collateral investigation completion page
    When user selects "<NumberOfRows>" number of rows to show CIC in grid
    And user Copy the CIC grid
    Then selected "<NumberOfRows>" rows "<Copied>" in case total enteries are "<More_Less>" than selected number
    Examples:
      | NumberOfRows | Copied                                | More_Less |
      | 10           | copied                                | more      |
      | 25           | copied                                | more      |
      | 50           | copied                                | more      |
      | 10           | not copied only available rows copied | less      |
      | 25           | not copied only available rows copied | less      |
      | 50           | not copied only available rows copied | less      |

 #FeatureId-ACAUTOCAS-14208
  Scenario Outline:Validating all Pagination in CIC grid
    And user open collateral investigation completion page
    When "<Page>" page of CIC grid is open
    Then "<Paginate_Btn>" should work successfully
    Examples:
      | Page  | Paginate_Btn             |
      | first | paginate_button next     |
      | first | paginate_button last     |
      | last  | paginate_button previous |
      | last  | paginate_button first    |

      #FeatureId-ACAUTOCAS-14208
  Scenario Outline:All pagination button validation in CIC grid
    And user open collateral investigation completion page
    When "<Page>" page of CIC grid is open
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

      #FeatureID-ACAUTOCAS-14208
  Scenario:Search on the basis of more than one grid column in CIC grid
    And user open collateral investigation completion page
    When user search application on the basis of more than one grid column
    Then search would be done on the combination of those grid column

          #FeatureID-ACAUTOCAS-14208
  Scenario:Last Update On column validation in CIC grid
    And user open collateral investigation completion page
    And user open an application to collateral investigation completion
    And user make some changes in application
    When user checks application in CIC grid
    Then Last Update On date should be display correctly as per last update

  #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Calender pop up validation On "<Column>" column in CIC grid
    And user open collateral investigation completion page
    When user clicks on calender icon of "<Column>" column in CIC grid
    Then calender should be display
    Examples:
      | Column          |
      | Initiated On    |
      | Last Updated On |

   #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Cancel apply date range On "<Column>" column validation in CIC grid
    And user open collateral investigation completion page
    When user clicks on calender icon of "<Column>" column in CIC grid
    And user clicks on cancel
    Then calender pop up should be closed
    Examples:
      | Column          |
      | Initiated On    |
      | Last Updated On |

   #FeatureID-ACAUTOCAS-14208
  Scenario Outline:Apply date range in "<Column>" column validation in CIC grid
    And user open collateral investigation completion page
    When user clicks on calender icon of "<Column>" column in CIC grid
    And user select date range
    And user apply the selected date range
    Then selected date range should be applied in "<Column>"
    Examples:
      | Column          |
      | Initiated On    |
      | Last Updated On |