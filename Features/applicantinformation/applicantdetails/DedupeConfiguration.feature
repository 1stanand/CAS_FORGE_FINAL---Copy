@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@Part-3
@Conventional
@Islamic
Feature: Dedupe Simulation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 5

#  CAS-89924_CAS-89921_CAS-90452_Capability for multiple DE-Dupe configuration

#  01_CAS-89924_89921_90452
 #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
  @Release
  @Release3
  Scenario: ACAUTOCAS-12821: In Dedupe Simulation Master the Dedupe Type field should be present
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    When user open Dedupe Configuration
    Then user should be able to verify that the Dedupe Type field present for the Dedupe Configuration

    #  01_CAS-89924_89921_90452
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12822: In Dedupe Simulation Master the Dedupe Type with "<dropdown>" field should be present
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    When user open Dedupe Configuration
    Then user should be able to verify that the Dedupe Type with "<dropdown>" field present for the Dedupe Configuration

    Examples:
      | dropdown         |
      | Individual       |
      | Lessor           |
      | Non-Individual   |
      | Seller           |
      | proposal         |
      | Partner/Director |

  #02_CAS-89924_89921_90452
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12823: Verify that for Dedupe Type as Individual there should be "<dropdown>" values present in Dedupe Set
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    When user open Dedupe Configuration
    Then user should be able to verify the "<dropdown>" values present in Dedupe Set

    Examples:
      | dropdown |
      | default  |
      | family   |

    #  02_CAS-89924_89921_90452,03_CAS-89924_89921_90452
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12824: In Dedupe Simulation Master the Dedupe Type as Individual "<Field_Name>" field should be present
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    When user open Dedupe Configuration
    Then user should be able to verify that the "<Field_Name>" field present for the Dedupe Configuration

    Examples:
      | Field_Name                                      |
      | Business Packet                                 |
      | Dedupe Set                                      |
      | Id Match (Individual) (Any - PAN, AADHAR, etc.) |
      | Customer Name Match(Full)                       |
      | Partial Name match                              |
      | Date of Birth Match Score                       |
      | Mobile Match                                    |
      | Residential Phone Match                         |
      | Residential Address Match                       |
      | Permanent Address Match                         |
      | Office Address Match                            |
      | Bank Details match                              |
      | Email ID Match                                  |
      | Minimum Dedupe Score                            |
      | Threshold (Range 0-1)                           |
      | Max Score                                       |
      | Consider Exposure Default                       |
      | Dedupe Score(Exposure)                          |

    #  02_CAS-89924_89921_90452,03_CAS-89924_89921_90452
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12825: In Dedupe Simulation Master the Dedupe Type as Non Individual "<Field_Name>" field should be present
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    When user open Dedupe Configuration
    And user select the dedupe Type as "Non-Individual"
    Then user should be able to verify that the "<Field_Name>" field present for the Dedupe Configuration

    Examples:
      | Field_Name                      |
      | Institution Name Match          |
      | Incorporation Date Match        |
      | Id Match (Non-Individual) (Any) |
      | Registration Number Match       |
      | Office Address Match            |
      | Mobile Match                    |
      | Phone Number Match              |
      | Bank Details match              |
      | Email ID Match                  |
      | Minimum Dedupe Score            |
      | Threshold (Range 0-1)           |
      | Max Score                       |
      | Consider Exposure Default       |
      | Dedupe Score(Exposure)          |

      #  02_CAS-89924_89921_90452,03_CAS-89924_89921_90452
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12826: In Dedupe Simulation Master the Dedupe Type as Lessor "<Field_Name>" field should be present
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    When user open Dedupe Configuration
    And user select the dedupe Type as "Lessor"
    Then user should be able to verify that the "<Field_Name>" field present for the Dedupe Configuration

    Examples:
      | Field_Name              |
      | Business Packet         |
      | DOB/Incorporation Date  |
      | Lessor Name             |
      | Address                 |
      | Mobile Match            |
      | Residential Phone Match |
      | Minimum Dedupe Score    |
      | Threshold (Range 0-1)   |


      #  02_CAS-89924_89921_90452,03_CAS-89924_89921_90452
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12827: In Dedupe Simulation Master the Dedupe Type as Seller "<Field_Name>" field should be present
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    When user open Dedupe Configuration
    And user select the dedupe Type as "Seller"
    Then user should be able to verify that the "<Field_Name>" field present for the Dedupe Configuration

    Examples:
      | Field_Name              |
      | Business Packet         |
      | DOB/Incorporation Date  |
      | Seller Name             |
      | Identification Number   |
      | Address                 |
      | Mobile Match            |
      | Residential Phone Match |
      | Minimum Dedupe Score    |
      | Threshold (Range 0-1)   |

     #  02_CAS-89924_89921_90452,03_CAS-89924_89921_90452
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12828: In Dedupe Simulation Master the Dedupe Type as Partner Director "<Field_Name>" field should be present
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    When user open Dedupe Configuration
    And user select the dedupe Type as "Partner/Director"
    Then user should be able to verify that the "<Field_Name>" field present for the Dedupe Configuration

    Examples:
      | Field_Name              |
      | Business Packet         |
      | DOB/Incorporation Date  |
      | Name Match Score        |
      | Identification Number   |
      | Address                 |
      | Mobile Match            |
      | Residential Phone Match |
      | Minimum Dedupe Score    |
      | Threshold (Range 0-1)   |

#      #  02_CAS-89924_89921_90452,03_CAS-89924_89921_90452
#  Scenario Outline:In Dedupe Simulation Master the Dedupe Type as Proposal "<Field_Name>" field should be present
#    And user open the Dedupe Simulation Master from menu bar
#    And user open Dedupe Configuration
#    When user select Dedupe Type as Proposal
#    Then user should be able to verify that the "<Field_Name>" field present for the Dedupe Simulation
#
#    Examples:
#      | Field_Name              |
#      | Business Packet         |
#      | DOB/Incorporation Date  |
#      | Name Match Score        |
#      | Identification Number   |
#      | Address                 |
#      | Mobile Match            |
#      | Residential Phone Match |
#      | Minimum Dedupe Score    |
#      | Threshold (Range 0-1)   |



#  CAS-98312_Capability to consider all the address fields for dedupe
  #01_CAS-98312,01_CAS_47771
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12829: Verify dedupe parameters as Individual with "<Field_Name>" field present in the dedupe simulation
    And user navigate to Dedupe Simulation Page
    When user select the dedupe parameter for "Individual"
    Then user should be able to verify that the "<Field_Name>" field present in the dedupe simulation for Individual

    Examples:
      | Field_Name            |
      | Region                |
      | State                 |
      | District              |
      | taluka                |
      | Village               |
      | Postal Code           |
      | Country               |
      | City                  |
      | Primary Phone         |
      | Mobile Phone          |
      | Bank Name             |
      | Account Number        |
      | Email                 |
      | First Name            |
      | Middle Name           |
      | Last Name             |
      | Date Of Birth         |
      | Identification Type   |
      | Unique Identification |
      | Address Line 1        |
      | Address Line 2        |
      | Address Line 3        |

#02_CAS-98312,01_CAS_47771
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12830: Verify dedupe parameters as Non Individual with "<Field_Name>" field present in the dedupe simulation
    And user navigate to Dedupe Simulation Page
    When user select the dedupe parameter for "Non-Individual"
    Then user should be able to verify that the "<Field_Name>" field present in the dedupe simulation for Non-Individual

    Examples:
      | Field_Name            |
      | Region                |
      | State                 |
      | District              |
      | taluka                |
      | Village               |
      | Postal Code           |
      | Country               |
      | City                  |
      | Primary Phone         |
      | Mobile Phone          |
      | Bank Name             |
      | Account Number        |
      | Email                 |
      | Institution Name      |
      | Incorporation Date    |
      | Registration No.      |
#      | Date Of Birth         |
      | Identification Type   |
      | Unique Identification |
      | Address Line 1        |
      | Address Line 2        |
      | Address Line 3        |

    #03_CAS-98312
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12831: Verify dedupe parameters as Seller with "<Field_Name>" field present in the dedupe simulation
    And user navigate to Dedupe Simulation Page
    When user select the dedupe parameter for "Seller"
    Then user should be able to verify that the "<Field_Name>" field present in the dedupe simulation for Seller

    Examples:
      | Field_Name             |
      | Region                 |
      | State                  |
      | District               |
      | taluka                 |
      | Village                |
      | Postal Code            |
      | Country                |
      | City                   |
      | Primary Phone          |
      | Mobile Phone           |
      | Seller Name            |
      | DOB/Incorporation Date |
      | Identification Number  |
      | Address Line 1         |
      | Address Line 2         |
      | Address Line 3         |

     #03_CAS-98312
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12832: Verify dedupe parameters as Lessor with "<Field_Name>" field present in the dedupe simulation
    And user navigate to Dedupe Simulation Page
    When user select the dedupe parameter for "Lessor"
    Then user should be able to verify that the "<Field_Name>" field present in the dedupe simulation for Lessor

    Examples:
      | Field_Name             |
      | Region                 |
      | State                  |
      | District               |
      | taluka                 |
      | Village                |
      | Postal Code            |
      | Country                |
      | City                   |
      | Primary Phone          |
      | Mobile Phone           |
      | Lessor Name            |
      | DOB/Incorporation Date |
      | Address Line 1         |
      | Address Line 2         |
      | Address Line 3         |

     #04_CAS-98312
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12833: Verify dedupe parameters as Partner with "<Field_Name>" field present in the dedupe simulation
    And user navigate to Dedupe Simulation Page
    When user select the dedupe parameter for "Partner"
    Then user should be able to verify that the "<Field_Name>" field present in the dedupe simulation for Partner

    Examples:
      | Field_Name             |
      | Region                 |
      | State                  |
      | District               |
      | taluka                 |
      | Village                |
      | Postal Code            |
      | Country                |
      | City                   |
      | Primary Phone          |
      | Mobile Phone           |
      | Individual/Company     |
      | Partner Name           |
      | DOB/Incorporation Date |
      | Identification Number  |
      | Address Line 1         |
      | Address Line 2         |
      | Address Line 3         |


     #04_CAS-98312
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12834: Verify dedupe parameters as Director with "<Field_Name>" field present in the dedupe simulation
    And user navigate to Dedupe Simulation Page
    When user select the dedupe parameter for "Director"
    Then user should be able to verify that the "<Field_Name>" field present in the dedupe simulation for Director

    Examples:
      | Field_Name             |
      | Region                 |
      | State                  |
      | District               |
      | taluka                 |
      | Village                |
      | Postal Code            |
      | Country                |
      | City                   |
      | Primary Phone          |
      | Mobile Phone           |
      | Director Name          |
      | DOB/Incorporation Date |
      | Identification Number  |
      | Address Line 1         |
      | Address Line 2         |
      | Address Line 3         |

  #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12835:  Run Dedupe Parameters as "<dedupe_parameters>" without Postal Code at Dedupe Simulation
    And user navigate to Dedupe Simulation Page
    When user select the dedupe parameter for "<dedupe_parameters>"
    And user runs dedupe in dedupe simulation for "<dedupe_parameters>"
    Then error message should be displayed successfully on Postal Code

    Examples:
      | dedupe_parameters |
      | Lessor            |
      | Non-Individual    |
      | Seller            |
      | Partner           |
      | Director          |

    Examples:
      | dedupe_parameters |
      | Individual        |

#CAS-183692
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12836: For Dedupe Type as Individual Modified "<Field_Name>" field data should be visible under Dedupe Configuration
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    And user open Dedupe Configuration
    And user select the dedupe Type as "Individual"
    And user reads data from the excel file "dedupeSimulation.xlsx" under sheet "dedupe_config" and row 0
    When user modified "<Field_Name>" field data in Individual
    And user click on Save
    And user click OK on confirmation popup
    And user open Dedupe Configuration
    And user select the dedupe Type as "Individual"
    Then the modified "<Field_Name>" field data should be successfully visible for Dedupe Configuration in Individual

    Examples:
      | Field_Name                                      |
      | Business Packet                                 |
      | Id Match (Individual) (Any - PAN, AADHAR, etc.) |
      | Customer Name Match(Full)                       |
      | Partial Name match                              |
      | Date of Birth Match Score                       |
      | Mobile Match                                    |
      | Residential Phone Match                         |
      | Residential Address Match                       |
      | Permanent Address Match                         |
      | Office Address Match                            |
      | Bank Details match                              |
      | Email ID Match                                  |
      | Minimum Dedupe Score                            |
      | Threshold (Range 0-1)                           |
      | Max Score                                       |
      | Dedupe Score(Exposure)                          |

    #CAS-183692
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12837: For Dedupe Type as Non Individual Modified "<Field_Name>" field data should be visible under Dedupe Configuration
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    And user open Dedupe Configuration
    And user select the dedupe Type as "Non-Individual"
    And user reads data from the excel file "dedupeSimulation.xlsx" under sheet "dedupe_config" and row 0
    When user modified "<Field_Name>" field data in Non-Individual
    And user click on Save
    And user click OK on confirmation popup
    And user open Dedupe Configuration
    And user select the dedupe Type as "Non-Individual"
    Then the modified "<Field_Name>" field data should be successfully visible for Dedupe Configuration in Non-Individual

    Examples:
      | Field_Name                  |
      | Institution Name Match      |
      | Incorporation Date Match    |
      | Id Match (Individual) (Any) |
      | Registration Number Match   |
      | Office Address Match        |
      | Mobile Match                |
      | Phone Number Match          |
      | Bank Details match          |
      | Email ID Match              |
      | Minimum Dedupe Score        |
      | Threshold (Range 0-1)       |
      | Max Score                   |
      | Dedupe Score(Exposure)      |

      #CAS-183692
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12838: For Dedupe Type as Lessor Modified "<Field_Name>" field data should be visible under Dedupe Configuration
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    And user open Dedupe Configuration
    And user select the dedupe Type as "Lessor"
    And user reads data from the excel file "dedupeSimulation.xlsx" under sheet "dedupe_config" and row 0
    When user modified "<Field_Name>" field data in Lessor
    And user click on Save
    And user click OK on confirmation popup
    And user open Dedupe Configuration
    And user select the dedupe Type as "Lessor"
    Then the modified "<Field_Name>" field data should be successfully visible for Dedupe Configuration in Lessor

    Examples:
      | Field_Name              |
      | Business Packet         |
      | DOB/Incorporation Date  |
      | Lessor Name             |
      | Address                 |
      | Mobile Match            |
      | Residential Phone Match |
      | Minimum Dedupe Score    |
      | Threshold (Range 0-1)   |

        #CAS-183692
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12839: For Dedupe Type as Seller Modified "<Field_Name>" field data should be visible under Dedupe Configuration
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    And user open Dedupe Configuration
    And user select the dedupe Type as "Seller"
    And user reads data from the excel file "dedupeSimulation.xlsx" under sheet "dedupe_config" and row 0
    When user modified "<Field_Name>" field data in Seller
    And user click on Save
    And user click OK on confirmation popup
    And user open Dedupe Configuration
    And user select the dedupe Type as "Seller"
    Then the modified "<Field_Name>" field data should be successfully visible for Dedupe Configuration in Seller

    Examples:
      | Field_Name              |
      | Business Packet         |
      | DOB/Incorporation Date  |
      | Seller Name             |
      | Identification Number   |
      | Address                 |
      | Mobile Match            |
      | Residential Phone Match |
      | Minimum Dedupe Score    |
      | Threshold (Range 0-1)   |



        #CAS-183692
    #FeatureID-ACAUTOCAS-144,ACAUTOCAS-145
  @ImplementedBy-ashutosh.kumar2
    @Release
    @Release3
  Scenario Outline: ACAUTOCAS-12840: For Dedupe Type as Partner Director Modified "<Field_Name>" field data should be visible under Dedupe Configuration
    And user navigate to Dedupe Simulation Page
    And user select the dedupe parameter for "Individual"
    And user open Dedupe Configuration
    And user select the dedupe Type as "Partner/Director"
    And user reads data from the excel file "dedupeSimulation.xlsx" under sheet "dedupe_config" and row 0
    When user modified "<Field_Name>" field data in Partner_Director
    And user click on Save
    And user click OK on confirmation popup
    And user open Dedupe Configuration
    And user select the dedupe Type as "Partner/Director"
    Then the modified "<Field_Name>" field data should be successfully visible for Dedupe Configuration in Partner Director

    Examples:
      | Field_Name              |
      | Business Packet         |
      | DOB/Incorporation Date  |
      | Name Match Score        |
      | Identification Number   |
      | Address                 |
      | Mobile Match            |
      | Residential Phone Match |
      | Minimum Dedupe Score    |
      | Threshold (Range 0-1)   |





