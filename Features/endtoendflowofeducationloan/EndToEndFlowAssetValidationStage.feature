@Epic-E2E
@Conventional
@E2EOrder
@Release
@AssetValidation

Feature: End to end work flow for Asset Validation Consumer Durable
  @ImplementedBy-ashutosh.kumar2
Scenario Outline: ACAUTOCAS-19799: User fill asset serial number at Asset validation for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Asset_validation" stage present in context from application grid
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    When user fill Asset Serial Number
    And user click on validate asset serial number
    Then asset serial number validate successfully

    Examples:
      | LogicalID | ProductType      |LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | CD00001   | Consumer Durable |asset_details.xlsx | home                      | 84                               |
