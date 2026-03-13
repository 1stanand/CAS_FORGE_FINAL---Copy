@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-aditya.tomar
@Release3
@Reconciled
@ReviewedSecCollateral

Feature: Collateral investigation initiation screen validation for save search part 12

  Scenario Outline: ACAUTOCAS-4411: user saves search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens collateral investigation initiation screen
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_api>" and row <Cii_api_rowNum>
    And user stores some values collateral investigation initiation grid using api
    And user reads data from the excel file "<CiiWB>" under sheet "<Cii_ciiGrid>" and row <Cii_ciiGrid_rowNum>
    And user enters parameter values present in collateral investigation initiation
    And user enter the Search Criteria Name to save search
    And user saves the search criteria
    Then user should be able to save search criteria for combination
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 651                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 652                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 653                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 654                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 655                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 656                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 657                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 658                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 659                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 660                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 661                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 662                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 663                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 664                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 665                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 666                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 667                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 668                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 669                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 670                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 671                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 672                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 673                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 674                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 675                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 676                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 677                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 678                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 679                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 680                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 681                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 682                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 683                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 684                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 685                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 686                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 687                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 688                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 689                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 690                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 691                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 692                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 693                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 694                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 695                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 696                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 697                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 698                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 699                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 700                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 701                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 702                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 703                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 704                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 705                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 706                | api     | 0              |
