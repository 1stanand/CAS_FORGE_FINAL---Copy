@Epic-Applicant_Information
@ReviewedByDEV
@AppInfoAdoption
@Copy

Feature: Copy an address

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

   #FeatureID-ACAUTOCAS-151
  @Sanity
  Scenario Outline: ACAUTOCAS-3973:  Copy an address from an existing Address
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_home>" and row <PersonalInfo_home_rowNum>
    And user fills home page of personal information
    And user reads data from the excel file "<PersonalInfoWB>" under sheet "<PersonalInfo_address>" and row <PersonalInfo_address_rowNum>
    When user creates an address using the existing address
    Then address should be added successfully

    @Release @Part-2
    @AuthoredBy-ayush.garg
    @ImplementedBy-ayush.garg
    @Conventional
    #${ ProductType : ["PF","HL","AL","EDU","OMNI","CEQ","KCC","AGRL", "FE","MHL","CV","CC","LAP"]}
    Examples:
      | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | personal_information.xlsx | home              | 1                        | address              | 0                           |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
     # ${ ProductType : ["IHF","IAF"]}
    Examples:
      | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | personal_information.xlsx | home              | 171                      | address              | 0                           |

    @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
    @Islamic
    @Release
@Part-2
    # ${ ProductType : ["IPF"]}
    Examples:
      | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | personal_information.xlsx | home              | 171                      | address              | 0                           |

    @AuthoredBy-anshika.gupta
     #${ ProductType : ["BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","JLG","SHG","CL"]}
   @NotImplemented
    Examples:
      | ProductType   | PersonalInfoWB            | PersonalInfo_home | PersonalInfo_home_rowNum | PersonalInfo_address | PersonalInfo_address_rowNum |
      | <ProductType> | personal_information.xlsx | home              | 1                        | address              | 0                           |