@AuthoredBy-rsurya.kumar
@Epic-Applicant_Information
@Part-3
#Author:rsurya.kumar
#ScriptedBy:
#ReviewedBy:
#Scenarios:
@ConfigRequired
Feature: Configuration verification for config.view.column.layout with value 4

#  In this feature we will verify column layout configuration

# ${CollType:[]}
# ${CollSubType:[]}
###Squash:164464
###Story:CAS-120070
###Bug:
#FeatureID-ACAUTOCAS-8505,CAS-120070
  Scenario Outline: ACAUTOCAS-13660:  Column layout validation 4 for corporate rating screen of non individual customer of <ProductType> application at <ApplicationStage> stage
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user creates an dedupe application of "<ProductType>" product type as "nonindiv" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from web service
    And user navigates to personal information page of "<ApplicationStage>"
    When user navigates to Corporate Rating
    Then user should be able to see fields arranged in 4 columns
     #${ ProductType : ["PF","HL","MAL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    # ${ApplicationStage:["Lead Details","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @ImplementedBy-yash.sharma
    @ReleaseAppInfoM4
    @Conventional
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IHF","IAF"]}
    # ${ApplicationStage:["Sourcing","DDE","Recommendation","Reconsideration","Credit Approval"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category | Key |
      | <ApplicationStage> | <ProductType> |          |     |
# ${ ProductType : ["IPF"]}
    # ${ApplicationStage:["Sourcing","DDE","Recommendation","Reconsideration","Credit Approval"]}
 #${ Category:["bonds","shares","metals"]}
    @Islamic
    @NotImplemented
    Examples:
      | ApplicationStage   | ProductType   | Category   | Key |
      | <ApplicationStage> | <ProductType> | <Category> |     |

