@Epic-E2E
@Conventional
@E2EOrder
@Release
@GoldValuation

#FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

############################################### Gold Valuation Stage ##################################################################################
  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
Scenario Outline: ACAUTOCAS-19821: Update gold valuation in gold valuation for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "GOLD VALUATION" stage present in context from application grid
    And user reads data from the excel file "<GoldValuationWB>" under sheet "<GoldValuation_sheet>" and row <GoldValuation_rowNum>
    And user open gold valuation tab
    When user update the filled gold valuation details
    Then gold valuation details saved successfully
    Examples:
      | LogicalID | ProductType | GoldValuationWB                      | GoldValuation_sheet | GoldValuation_rowNum |
      | GL00001   | Gold Loan   | gold_valuation_details_end_flow.xlsx | gold_valuation      | 0                    |


  @AuthoredBy-vipin.kishor
    @ImplementedBy-vipin.kishor
Scenario Outline: ACAUTOCAS-20901:Save updated gold valuation details in gold valuation for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "GOLD VALUATION" stage present in context from application grid
    And user reads data from the excel file "<GoldValuationWB>" under sheet "<GoldValuation_sheet>" and row <GoldValuation_rowNum>
    And user open gold valuation tab
    And user fills packet weight in packet details
    And user save gold valuation details
    Then gold valuation details should be updated successfully
    Examples:
      | LogicalID | ProductType | GoldValuationWB                      | GoldValuation_sheet | GoldValuation_rowNum |
      | GL00001   | Gold Loan   | gold_valuation_details_end_flow.xlsx | gold_valuation      | 0                    |
