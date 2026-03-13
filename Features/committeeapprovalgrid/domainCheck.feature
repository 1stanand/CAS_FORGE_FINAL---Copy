@Epic-Committee_Approval
@AuthoredBy-harsh.anand
@ReviewedBy-
@ImplementedBy-
@TechReviewedBy-


Feature: Domain Check feature

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens a application at committee approval stage
#    And click on domain check

    #Pre-requisite--
    #Domain check service is hitted for primary Applicant only with official Email and on credit approval primary applicant is not verified
#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: Only primary applicant name should be shown at <ApplicationStage> in <ProductType>
    When user will reach at domain  check
    Then only primary applicant name should be shown

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#  Scenario: All the domain check fields should be open when user click on Primary applicant name
#    When user clicks on primary applicant name
#    Then all the fields get oepned  merge

  #FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: Domain check all fields is in view mode at <ApplicationStage> in <ProductType>
    When user view the Domain check feilds
    Then all the fields should be in view mode
      | Verify All           | Domain Check            | Button       |
      | Verify               | Primary Appliacant Name | Button       |
      | Official Email       | Primary Appliacant Name | Field        |
      | Employer Name        | Primary Appliacant Name | Field        |
      | Official Email       | Primary Appliacant Name | Table Header |
      | Employer Name        | Primary Appliacant Name | Table Header |
      | Response Received on | Primary Appliacant Name | Table Header |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  #FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: View Domain Check fields if Primary Applicant is  not verified at <ApplicationStage> in <ProductType>
    And Primary applicant is not verified
    When user opens on primary applicant accordian
    Then user should be able to view these fields
      | Verify All           | Domain Check            | Button       |
      | Verify               | Primary Appliacant Name | Button       |
      | Official Email       | Primary Appliacant Name | Field        |
      | Employer Name        | Primary Appliacant Name | Field        |
      | Official Email       | Primary Appliacant Name | Table Header |
      | Employer Name        | Primary Appliacant Name | Table Header |
      | Response Received on | Primary Appliacant Name | Table Header |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


  #And primary applicant is not verified
     #FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: View Domain Check field values if Primary Applicant is not verified at <ApplicationStage> in <ProductType>
    When user opens the Primary Applicant accordian by clicking upon the name
    Then  values should be visible in view mode
      | Official Email ID |
      | Employer Name     |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


  #Pre-requisite--
  # Domain check service is hitted for primary Applicant only with official Email and on credit approval primary applicant is Verified
#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline:  User open the application and view Domain Check  if Primary Applicant is verified at <ApplicationStage> in <ProductType>
    When Primary applicant is verified once
    Then user should be able to view the Fields under var of type

      | Verify               | Primary Applicant Name | Button       |
      | Official Email       | Primary Applicant Name | Field        |
      | Employer Name        | Primary Applicant Name | Field        |
      | Official Email       | Domain Check Records   | Table Header |
      | Employer Name        | Domain Check Records   | Table Header |
      | Response Received on | Domain Check Records   | Table Header |
      | Domain Check report  | Domain Check Records   | Table Header |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |


#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: View Domain Check if Primary Applicant is verified at <ApplicationStage> in <ProductType>
    And primary applicant is  verified
    When user opens the Primary Applicant accordian by clicking upon the name
    Then var Values of this fields under this accordian should be visible in view mode

      | var                       | fields               | accordian              |
      | Official Email ID         | Official Email       | Primary Applicant Name |
      | Employer Name             | Employer Name        | Primary Applicant Name |
      | Official Email ID         | Official Email       | Domain Check Records   |
      | Employer Name             | Employer Name        | Domain Check Records   |
      | Updated Date and Time     | Response Received On | Domain Check Records   |
      | Download Report Hyperlink | Domain Check Report  | Domain Check Records   |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: User will Verify the Primary Applicant number of times at Committee Approval which will be updated as history at <ApplicationStage> in <ProductType>
    And primary applicant is  verified number of times
    When user opens the Primary Applicant accordian by clicking upon the name
    Then var values in multiple updated records history of this fields under the accordian should be visible in view mode
      | Official Email ID         | Official Email       | Domain Check Records |
      | Employer Name             | Employer Name        | Domain Check Records |
      | Updated Date and Time     | Response Received On | Domain Check Records |
      | Download Report Hyperlink | Domain Check Report  | Domain Check Records |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: User can download the updated report from Records at <ApplicationStage> in <ProductType>
    And primary applicant is  verified
    And user opens the Primary Applicant accordian by clicking upon the name
    When user click on the download report present in records
    Then Updated report should be downloaded

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#prequisite
# Domain check service is not hitted for any applicant

  #FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: Domain Service is not hitted so no applicant will be shown in Domain Check at <ApplicationStage> in <ProductType>
    When User will View the fields under Domain check
    Then No Fields should be there

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

 #Pre-requisite--
 # Domain check service is hitted for primary and muliple Co- applicant and gurantor only with official Email and on credit approval All the applicants are not verified.
#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: All of the applicant name should be shown at <ApplicationStage> in <ProductType>
    When user will reach at domain  check
    Then all the applicant name should be shown
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: All the domain check fields should be open if user click on Primary  co-applicant  gurantor name at <ApplicationStage> in <ProductType>
    When user clicks on Primary , co-applicant and gurantor name
    Then all the fields get oepned
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: User open the application to view Domain Check fields  if all the applicants are not verified at <ApplicationStage> in <ProductType>
    When Primary , co-applicant and gurantor is not verified
    Then user should be able to view the fields under var of this type

      | Verify All            | Primary Appliacant Name | Button       |
      | Verify                | Primary Appliacant Name | Button       |
      | Official Email        | Primary Appliacant Name | Field        |
      | Employer Name         | Primary Appliacant Name | Field        |
      | Official Email        | Primary Appliacant Name | Table Header |
      | Employer Name         | Primary Appliacant Name | Table Header |
      | Response Received on  | Primary Appliacant Name | Table Header |
      | Domain C  heck report | Primary Appliacant Name | Table Header |
      | Verify All            | Co- Appliacant Name     | Button       |
      | Verify                | Co- Appliacant Name     | Button       |
      | Official Email        | Co- Appliacant Name     | Field        |
      | Employer Name         | Co- Appliacant Name     | Field        |
      | Official Email        | Co- Appliacant Name     | Table Header |
      | Employer Name         | Co- Appliacant Name     | Table Header |
      | Response Received on  | Co- Appliacant Name     | Table Header |
      | Domain Check report   | Co- Appliacant Name     | Table Header |
      | Verify All            | Guarantor               | Button       |
      | Verify                | Guarantor               | Button       |
      | Official Email        | Guarantor               | Field        |
      | Employer Name         | Guarantor               | Field        |
      | Official Email        | Guarantor               | Table Header |
      | Employer Name         | Guarantor               | Table Header |
      | Response Received on  | Guarantor               | Table Header |
      | Domain Check report   | Guarantor               | Table Header |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

    #FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline:  User open the application to view Domain Check field values if all the applicants is not verified at <ApplicationStage> in <ProductType>
    When Primary , co-applicant and gurantor is not verified
    Then var  values in multiple updated records of all the applicant under this field should be visible in view mode
      | var               | field                   |
      | Official Email ID | Primary Appliacant Name |
      | Employer Name     | Primary Appliacant Name |
      | Official Email ID | Co- Appliacant Name     |
      | Employer Name     | Co- Appliacant Name     |
      | Official Email ID | Guarantor               |
      | Employer Name     | Guarantor               |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

 #Pre-requisite--
 # Domain check service is hitted for primary and muliple Co- applicant and gurantor only with official Email and on credit approval All the applicants are verified.

#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: User open the application to view Domain Check fields if Primary  co-applicant  gurantor is verified at <ApplicationStage> in <ProductType>
    When Primary , co-applicant and gurantor is verified once
    Then user should be able to view the fields under var of this type

      | fields               | var                     | type         |
      | Verify All           | Primary Appliacant Name | Button       |
      | Verify               | Primary Appliacant Name | Button       |
      | Official Email       | Primary Appliacant Name | Field        |
      | Employer Name        | Primary Appliacant Name | Field        |
      | Official Email       | Primary Appliacant Name | Table Header |
      | Employer Name        | Primary Appliacant Name | Table Header |
      | Response Received on | Primary Appliacant Name | Table Header |
      | Domain Check report  | Primary Appliacant Name | Table Header |
      | Verify All           | Co- Appliacant Name     | Button       |
      | Verify               | Co- Appliacant Name     | Button       |
      | Official Email       | Co- Appliacant Name     | Field        |
      | Employer Name        | Co- Appliacant Name     | Field        |
      | Official Email       | Co- Appliacant Name     | Table Header |
      | Employer Name        | Co- Appliacant Name     | Table Header |
      | Response Received on | Co- Appliacant Name     | Table Header |
      | Domain Check report  | Co- Appliacant Name     | Table Header |
      | Verify All           | Guarantor               | Button       |
      | Verify               | Guarantor               | Button       |
      | Official Email       | Guarantor               | Field        |
      | Employer Name        | Guarantor               | Field        |
      | Official Email       | Guarantor               | Table Header |
      | Employer Name        | Guarantor               | Table Header |
      | Response Received on | Guarantor               | Table Header |
      | Domain Check report  | Guarantor               | Table Header |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: View Domain Check  if Primary with Multiple- Co Applicant with Gurantor is verified at <ApplicationStage> in <ProductType>
    And Primary, Multiple- Co Applicant and Gurantor is  verified
    When user opens the Primary and Multiple- Co Applicant and Gurantor accordian by clicking upon the name
    Then var Values of this fields under this accordian should be visible in view mode
      | Official Email ID         | Official Email       | Primary Applicant Name |
      | Employer Name             | Employer Name        | Primary Applicant Name |
      | Official Email ID         | Official Email       | Domain Check Records   |
      | Employer Name             | Employer Name        | Domain Check Records   |
      | Updated Date and Time     | Response Received On | Domain Check Records   |
      | Download Report Hyperlink | Domain Check Report  | Domain Check Records   |
      | Official Email ID         | Official Email       | Co Applicant Name      |
      | Employer Name             | Employer Name        | Co Applicant Name      |
      | Official Email ID         | Official Email       | Domain Check Records   |
      | Employer Name             | Employer Name        | Domain Check Records   |
      | Updated Date and Time     | Response Received On | Domain Check Records   |
      | Download Report Hyperlink | Domain Check Report  | Domain Check Records   |
      | Official Email ID         | Official Email       | Gurantor Name          |
      | Employer Name             | Employer Name        | Gurantor Name          |
      | Official Email ID         | Official Email       | Domain Check Records   |
      | Employer Name             | Employer Name        | Domain Check Records   |
      | Updated Date and Time     | Response Received On | Domain Check Records   |
      | Download Report Hyperlink | Domain Check Report  | Domain Check Records   |

    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

#FeatureID-ACAUTOCAS-11072
# ${ProductType:["PF","HL","CON_VEH","IHF","IPF","MULF","FAS","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","CC","LAP","CL"]}
# ${ApplicationStage:["Committee Approval"]}
  Scenario Outline: User can download the updated report from Records of Primary --  Multiple Co Applicant -- Gurantor at <ApplicationStage> in <ProductType>
    And Primary, Multiple- Co Applicant and Gurantor is  verified
    And user opens the Primary and Multiple- Co Applicant and Gurantor accordian by clicking upon the name
    When user click on the download report present in records
    Then Updated report should be downloaded
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |





