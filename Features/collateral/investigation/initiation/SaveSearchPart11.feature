@Epic-Collateral_Investigation
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@Reconciled
@ReviewedByDEV
@ReviewedSecCollateral

Feature: Collateral investigation initiation screen validation for save search part 11
#FeatureID-ACAUTOCAS-363
  Scenario Outline: ACAUTOCAS-4410:  user saves search criteria <Cii_ciiGrid_rowNum> for CII with various search parameters
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
    @ImplementedBy-kanika.mahal
    @Release3
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 604                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 605                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 606                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 607                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 608                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 609                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 610                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 611                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 612                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 613                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 614                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 615                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 616                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 617                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 618                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 619                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 620                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 621                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 622                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 623                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 624                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 625                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 626                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 627                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 628                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 629                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 630                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 631                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 632                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 633                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 634                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 635                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 636                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 637                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 638                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 639                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 640                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 641                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 642                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 643                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 644                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 645                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 646                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 647                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 648                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 649                | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 650                | api     | 0              |
    @ImplementedBy-priyanshu.kashyap
    @Release3
    Examples:
      | CiiWB                                    | Cii_ciiGrid | Cii_ciiGrid_rowNum | Cii_api | Cii_api_rowNum |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1160               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1161               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1162               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1163               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1164               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1165               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1166               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1167               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1168               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1169               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1170               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1171               | api     | 0              |
      | collateral_investigation_initiation.xlsx | cii_grid    | 1172               | api     | 0              |
