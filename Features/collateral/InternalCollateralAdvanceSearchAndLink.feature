@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ReviewedBy-None
@ImplementedBy-atul.mishra
@Release
Feature: Internal Collateral Advance Search

#  Pre-Requisites---
#  In this feature we will validate the screen layout of Collateral Browser Page

#  Background:
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#Internal Collateral Search and link
  Scenario Outline: ACAUTOCAS-3113: Provision to search internal collateral and link with advance parameters
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "DDE" stage from application grid
    And user opens Collateral Page
    And user searches for an existing collateral
    And user selects advance search option
#    And user gets advance search option to filter the collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_search>" and row <Collateral_search_rowNum>
    When user enters parameters to search collateral
    And clicks on search
    And user sees the list of collaterals available in CMS as per the parameters entered
    Then user should be able to link it to the application
    Examples:
      | CollateralWB    | Collateral_search | Collateral_search_rowNum |
      | collateral.xlsx | collateral_search | 146                      |
      | collateral.xlsx | collateral_search | 147                      |
      | collateral.xlsx | collateral_search | 148                      |
      | collateral.xlsx | collateral_search | 149                      |
      | collateral.xlsx | collateral_search | 150                      |
      | collateral.xlsx | collateral_search | 151                      |
      | collateral.xlsx | collateral_search | 152                      |
      | collateral.xlsx | collateral_search | 153                      |
      | collateral.xlsx | collateral_search | 154                      |
      | collateral.xlsx | collateral_search | 155                      |
      | collateral.xlsx | collateral_search | 156                      |
      | collateral.xlsx | collateral_search | 157                      |
      | collateral.xlsx | collateral_search | 158                      |
      | collateral.xlsx | collateral_search | 159                      |
      | collateral.xlsx | collateral_search | 160                      |
      | collateral.xlsx | collateral_search | 161                      |
      | collateral.xlsx | collateral_search | 162                      |
      | collateral.xlsx | collateral_search | 163                      |
      | collateral.xlsx | collateral_search | 164                      |
      | collateral.xlsx | collateral_search | 165                      |
      | collateral.xlsx | collateral_search | 166                      |
      | collateral.xlsx | collateral_search | 167                      |
      | collateral.xlsx | collateral_search | 168                      |
      | collateral.xlsx | collateral_search | 169                      |
      | collateral.xlsx | collateral_search | 170                      |
      | collateral.xlsx | collateral_search | 171                      |
      | collateral.xlsx | collateral_search | 172                      |
      | collateral.xlsx | collateral_search | 173                      |
      | collateral.xlsx | collateral_search | 174                      |
      | collateral.xlsx | collateral_search | 175                      |
      | collateral.xlsx | collateral_search | 176                      |
      | collateral.xlsx | collateral_search | 177                      |
      | collateral.xlsx | collateral_search | 178                      |
      | collateral.xlsx | collateral_search | 179                      |
      | collateral.xlsx | collateral_search | 180                      |
      | collateral.xlsx | collateral_search | 181                      |
      | collateral.xlsx | collateral_search | 182                      |
      | collateral.xlsx | collateral_search | 183                      |
      | collateral.xlsx | collateral_search | 184                      |
      | collateral.xlsx | collateral_search | 185                      |
      | collateral.xlsx | collateral_search | 186                      |
      | collateral.xlsx | collateral_search | 187                      |
      | collateral.xlsx | collateral_search | 188                      |
      | collateral.xlsx | collateral_search | 189                      |
      | collateral.xlsx | collateral_search | 190                      |
      | collateral.xlsx | collateral_search | 191                      |
      | collateral.xlsx | collateral_search | 192                      |
      | collateral.xlsx | collateral_search | 193                      |
      | collateral.xlsx | collateral_search | 194                      |
      | collateral.xlsx | collateral_search | 195                      |
      | collateral.xlsx | collateral_search | 196                      |
      | collateral.xlsx | collateral_search | 197                      |
      | collateral.xlsx | collateral_search | 198                      |
      | collateral.xlsx | collateral_search | 199                      |
      | collateral.xlsx | collateral_search | 200                      |
      | collateral.xlsx | collateral_search | 201                      |
      | collateral.xlsx | collateral_search | 202                      |
      | collateral.xlsx | collateral_search | 203                      |
      | collateral.xlsx | collateral_search | 204                      |
      | collateral.xlsx | collateral_search | 205                      |
      | collateral.xlsx | collateral_search | 206                      |
      | collateral.xlsx | collateral_search | 207                      |
      | collateral.xlsx | collateral_search | 208                      |
      | collateral.xlsx | collateral_search | 209                      |
      | collateral.xlsx | collateral_search | 210                      |
      | collateral.xlsx | collateral_search | 211                      |
      | collateral.xlsx | collateral_search | 212                      |
      | collateral.xlsx | collateral_search | 213                      |
      | collateral.xlsx | collateral_search | 214                      |
      | collateral.xlsx | collateral_search | 215                      |
      | collateral.xlsx | collateral_search | 216                      |
      | collateral.xlsx | collateral_search | 217                      |
      | collateral.xlsx | collateral_search | 218                      |
