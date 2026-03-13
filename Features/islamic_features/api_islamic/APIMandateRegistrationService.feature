@Epic-Direct_Debit_System
@PQMStory
@AuthoredBy-ankit.yadav
@ImplementedBy-ankit.yadav
@ReviewedBy-None
@Release
@Islamic
@Part-2

#${ProductType:["IPF","IAF","IHF"]}

Feature: Mandate Registration Service API

  Background:
    Given user is on CAS Login Page

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17973: API Documentation Tab in mandate registration service for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on Documentation tab
    Then Service is present as per contract in API
    Examples:
      | ProductType   |
      | <ProductType> |

# PQM-1_CAS-192536,1_CAS-200581
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17974: Verify mandate registration service <Service> in <APIName> documentation for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on download "<Service>" for "<APIName>"
    Then "<Service>" is present as per contract in "<APIName>"
    Examples:
      | Service                 | ProductType   | APIName     |
      | API Documentation PDF   | <ProductType> | CAS_Disb_16 |
      | API Documentation Excel | <ProductType> | CAS_Disb_16 |

# PQM-2.1_CAS-192536,2.1_CAS-200581
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17975: Validating <APIHeader> in mandate registration service in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIHeader>" in search bar
    Then "<APIHeader>" should be present in API center
    Examples:
      | APIHeader                  | ProductType   |
      | CAS_Disb_16                | <ProductType> |
      | mandateRegistrationService | <ProductType> |

# PQM-2.2_CAS-192536,2.2_CAS-200581
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17976: Validating <APIDescription> in mandate registration service in API center for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user click on CAS API vault
    When user search "<APIDescription>" in search bar
    Then "<APIDescription>" should be present in API center
    Examples:
      | APIDescription                                                     | ProductType   |
      | mandateRegistrationService                                         | <ProductType> |
      | CAS_Disb_16                                                        | <ProductType> |
      | This service will be used to Register Applicant's Mandate Details. | <ProductType> |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17977: Verify API service mandate registration service URL for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateRegistration>" and row <Mandate_mandateRegistration_rowNum>
    When user searches "<APIName>" in documentation and opens
    Then User verify API service mandate registration service URL
    Examples:
      | ProductType   | APIName     | MandateWB    | Mandate_mandateRegistration | Mandate_mandateRegistration_rowNum |
      | <ProductType> | CAS_Disb_16 | mandate.xlsx | mandate_registration        | 0                                  |

    #FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17978: Verify API service mandate registration service URL in TRY Now feature for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateRegistration>" and row <Mandate_mandateRegistration_rowNum>
    Then User verify API service mandate registration service URL on try now page
    Examples:
      | ProductType   | APIName     | MandateWB    | Mandate_mandateRegistration | Mandate_mandateRegistration_rowNum |
      | <ProductType> | CAS_Disb_16 | mandate.xlsx | mandate_registration        | 0                                  |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17979: Validate <Fields> should be present in mandate registration service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Fields>" should be present in mandate registration "request" API request details
    Examples:
      | APIName     | ProductType   | Fields                     |
      | CAS_Disb_16 | <ProductType> | productProcessor           |
      | CAS_Disb_16 | <ProductType> | referenceNumber            |
      | CAS_Disb_16 | <ProductType> | cifNumber                  |
      | CAS_Disb_16 | <ProductType> | hostCifNumber              |
      | CAS_Disb_16 | <ProductType> | applicationNumber          |
      | CAS_Disb_16 | <ProductType> | applicantType              |
      | CAS_Disb_16 | <ProductType> | firstName                  |
      | CAS_Disb_16 | <ProductType> | middleName                 |
      | CAS_Disb_16 | <ProductType> | lastName                   |
      | CAS_Disb_16 | <ProductType> | fullName                   |
      | CAS_Disb_16 | <ProductType> | instName                   |
      | CAS_Disb_16 | <ProductType> | productType                |
      | CAS_Disb_16 | <ProductType> | mobile                     |
      | CAS_Disb_16 | <ProductType> | countryCode                |
      | CAS_Disb_16 | <ProductType> | isdCode                    |
      | CAS_Disb_16 | <ProductType> | phoneNumber                |
      | CAS_Disb_16 | <ProductType> | email                      |
      | CAS_Disb_16 | <ProductType> | identificationDetails      |
      | CAS_Disb_16 | <ProductType> | identificationType         |
      | CAS_Disb_16 | <ProductType> | identificationNumber       |
      | CAS_Disb_16 | <ProductType> | bankDetails                |
      | CAS_Disb_16 | <ProductType> | bankName                   |
      | CAS_Disb_16 | <ProductType> | bankCode                   |
      | CAS_Disb_16 | <ProductType> | bankId                     |
      | CAS_Disb_16 | <ProductType> | bankBranchCode             |
      | CAS_Disb_16 | <ProductType> | branchId                   |
      | CAS_Disb_16 | <ProductType> | ifscCode                   |
      | CAS_Disb_16 | <ProductType> | micrCode                   |
      | CAS_Disb_16 | <ProductType> | city                       |
      | CAS_Disb_16 | <ProductType> | bankingLocation            |
      | CAS_Disb_16 | <ProductType> | barCode                    |
      | CAS_Disb_16 | <ProductType> | accountType                |
      | CAS_Disb_16 | <ProductType> | accountSubType             |
      | CAS_Disb_16 | <ProductType> | accountNumber              |
      | CAS_Disb_16 | <ProductType> | iban                       |
      | CAS_Disb_16 | <ProductType> | accountName                |
      | CAS_Disb_16 | <ProductType> | repaymentDetails           |
      | CAS_Disb_16 | <ProductType> | repaymentTowards           |
      | CAS_Disb_16 | <ProductType> | repaymentContribution      |
      | CAS_Disb_16 | <ProductType> | effectiveDate              |
      | CAS_Disb_16 | <ProductType> | expiryDate                 |
      | CAS_Disb_16 | <ProductType> | nextDueDate                |
      | CAS_Disb_16 | <ProductType> | firstInstallmentDate       |
      | CAS_Disb_16 | <ProductType> | installmentFrequency       |
      | CAS_Disb_16 | <ProductType> | noOfInstallments           |
      | CAS_Disb_16 | <ProductType> | sumOfInstallmentAmount     |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode (excluded) |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               |
      | CAS_Disb_16 | <ProductType> | baseValue                  |
      | CAS_Disb_16 | <ProductType> | mandateNature              |
      | CAS_Disb_16 | <ProductType> | mandateType                |
      | CAS_Disb_16 | <ProductType> | tempAccountNumber          |
      | CAS_Disb_16 | <ProductType> | custodianType              |
      | CAS_Disb_16 | <ProductType> | custodianDescription       |
      | CAS_Disb_16 | <ProductType> | capAmountInitiated         |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               |
      | CAS_Disb_16 | <ProductType> | baseValue                  |
      | CAS_Disb_16 | <ProductType> | maxEmiAmount               |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               |
      | CAS_Disb_16 | <ProductType> | baseValue                  |
      | CAS_Disb_16 | <ProductType> | nextEmiAmount              |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               |
      | CAS_Disb_16 | <ProductType> | baseValue                  |
      | CAS_Disb_16 | <ProductType> | documentDetails            |
      | CAS_Disb_16 | <ProductType> | documentFileName           |
      | CAS_Disb_16 | <ProductType> | document                   |
      | CAS_Disb_16 | <ProductType> | mandateVerificationDetails |
      | CAS_Disb_16 | <ProductType> | verificationStatus         |
      | CAS_Disb_16 | <ProductType> | verifiedBy                 |
      | CAS_Disb_16 | <ProductType> | verificationAgency         |
      | CAS_Disb_16 | <ProductType> | notifyCustomer             |
      | CAS_Disb_16 | <ProductType> | expireInHours              |
      | CAS_Disb_16 | <ProductType> | dueDay                     |
      | CAS_Disb_16 | <ProductType> | nachCollectedType          |
      | CAS_Disb_16 | <ProductType> | nachRegistrationType       |
      | CAS_Disb_16 | <ProductType> | dynamicJsonData            |
      | CAS_Disb_16 | <ProductType> | requestReferenceNumber     |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17980: Validate <Status> <Fields> should be present in mandate registration service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Status>" "<Fields>" should be present in mandate registration API request details
    Examples:
      | APIName     | ProductType   | Fields                     | Status   |
      | CAS_Disb_16 | <ProductType> | productProcessor           | required |
      | CAS_Disb_16 | <ProductType> | referenceNumber            | required |
      | CAS_Disb_16 | <ProductType> | cifNumber                  | required |
      | CAS_Disb_16 | <ProductType> | hostCifNumber              |          |
      | CAS_Disb_16 | <ProductType> | applicationNumber          |          |
      | CAS_Disb_16 | <ProductType> | applicantType              |          |
      | CAS_Disb_16 | <ProductType> | firstName                  |          |
      | CAS_Disb_16 | <ProductType> | middleName                 |          |
      | CAS_Disb_16 | <ProductType> | lastName                   |          |
      | CAS_Disb_16 | <ProductType> | fullName                   |          |
      | CAS_Disb_16 | <ProductType> | instName                   |          |
      | CAS_Disb_16 | <ProductType> | productType                | required |
      | CAS_Disb_16 | <ProductType> | mobile                     | required |
      | CAS_Disb_16 | <ProductType> | countryCode                |          |
      | CAS_Disb_16 | <ProductType> | isdCode                    |          |
      | CAS_Disb_16 | <ProductType> | phoneNumber                |          |
      | CAS_Disb_16 | <ProductType> | email                      |          |
      | CAS_Disb_16 | <ProductType> | identificationDetails      |          |
      | CAS_Disb_16 | <ProductType> | identificationType         |          |
      | CAS_Disb_16 | <ProductType> | identificationNumber       | required |
      | CAS_Disb_16 | <ProductType> | bankDetails                | required |
      | CAS_Disb_16 | <ProductType> | bankName                   | required |
      | CAS_Disb_16 | <ProductType> | bankCode                   | required |
      | CAS_Disb_16 | <ProductType> | bankId                     |          |
      | CAS_Disb_16 | <ProductType> | bankBranchCode             |          |
      | CAS_Disb_16 | <ProductType> | branchId                   |          |
      | CAS_Disb_16 | <ProductType> | ifscCode                   |          |
      | CAS_Disb_16 | <ProductType> | micrCode                   |          |
      | CAS_Disb_16 | <ProductType> | city                       | required |
      | CAS_Disb_16 | <ProductType> | bankingLocation            | required |
      | CAS_Disb_16 | <ProductType> | barCode                    | required |
      | CAS_Disb_16 | <ProductType> | accountType                | required |
      | CAS_Disb_16 | <ProductType> | accountSubType             |          |
      | CAS_Disb_16 | <ProductType> | accountNumber              |          |
      | CAS_Disb_16 | <ProductType> | iban                       |          |
      | CAS_Disb_16 | <ProductType> | accountName                |          |
      | CAS_Disb_16 | <ProductType> | repaymentDetails           |          |
      | CAS_Disb_16 | <ProductType> | repaymentTowards           |          |
      | CAS_Disb_16 | <ProductType> | repaymentContribution      |          |
      | CAS_Disb_16 | <ProductType> | effectiveDate              |          |
      | CAS_Disb_16 | <ProductType> | expiryDate                 |          |
      | CAS_Disb_16 | <ProductType> | nextDueDate                |          |
      | CAS_Disb_16 | <ProductType> | firstInstallmentDate       |          |
      | CAS_Disb_16 | <ProductType> | installmentFrequency       |          |
      | CAS_Disb_16 | <ProductType> | noOfInstallments           |          |
      | CAS_Disb_16 | <ProductType> | sumOfInstallmentAmount     |          |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode (excluded) |          |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               |          |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               | required |
      | CAS_Disb_16 | <ProductType> | baseValue                  |          |
      | CAS_Disb_16 | <ProductType> | mandateNature              |          |
      | CAS_Disb_16 | <ProductType> | mandateType                |          |
      | CAS_Disb_16 | <ProductType> | tempAccountNumber          |          |
      | CAS_Disb_16 | <ProductType> | custodianType              |          |
      | CAS_Disb_16 | <ProductType> | custodianDescription       |          |
      | CAS_Disb_16 | <ProductType> | capAmountInitiated         |          |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            |          |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               |          |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               |          |
      | CAS_Disb_16 | <ProductType> | baseValue                  |          |
      | CAS_Disb_16 | <ProductType> | maxEmiAmount               |          |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            |          |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               |          |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               |          |
      | CAS_Disb_16 | <ProductType> | baseValue                  | required |
      | CAS_Disb_16 | <ProductType> | nextEmiAmount              | required |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            | required |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               | required |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               |          |
      | CAS_Disb_16 | <ProductType> | baseValue                  |          |
      | CAS_Disb_16 | <ProductType> | documentDetails            |          |
      | CAS_Disb_16 | <ProductType> | documentFileName           |          |
      | CAS_Disb_16 | <ProductType> | document                   |          |
      | CAS_Disb_16 | <ProductType> | mandateVerificationDetails |          |
      | CAS_Disb_16 | <ProductType> | verificationStatus         |          |
      | CAS_Disb_16 | <ProductType> | verifiedBy                 |          |
      | CAS_Disb_16 | <ProductType> | verificationAgency         |          |
      | CAS_Disb_16 | <ProductType> | notifyCustomer             |          |
      | CAS_Disb_16 | <ProductType> | expireInHours              |          |
      | CAS_Disb_16 | <ProductType> | dueDay                     |          |
      | CAS_Disb_16 | <ProductType> | nachCollectedType          |          |
      | CAS_Disb_16 | <ProductType> | nachRegistrationType       | required |
      | CAS_Disb_16 | <ProductType> | dynamicJsonData            |          |
      | CAS_Disb_16 | <ProductType> | requestReferenceNumber     | required |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17981: <Fields> should be present in mandate registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in mandate registration "response" API response details
    Examples:
      | APIName     | ProductType   | Fields                 |
      | CAS_Disb_16 | <ProductType> | responseStatus         |
      | CAS_Disb_16 | <ProductType> | requestReferenceNumber |
      | CAS_Disb_16 | <ProductType> | status                 |
      | CAS_Disb_16 | <ProductType> | errorMap               |
      | CAS_Disb_16 | <ProductType> | property1              |
      | CAS_Disb_16 | <ProductType> | property2              |
      | CAS_Disb_16 | <ProductType> | mandateId              |
      | CAS_Disb_16 | <ProductType> | responsePacket         |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17982: <Description> of <Fields> should be present in mandate registration service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in mandate registration API request details
    Examples:
      | APIName     | ProductType   | Fields                     | Description                                                                                                                           |
      | CAS_Disb_16 | <ProductType> | productProcessor           | This field signifies the module from which the request has been raised. The valid value will be from Dtype:ProductProcessor and Sampl |
      | CAS_Disb_16 | <ProductType> | referenceNumber            | This field signifies the UMRN number of Mandate reference Number. The length of the field is 255.                                     |
      | CAS_Disb_16 | <ProductType> | cifNumber                  | This field signifies the FinnOne Neo CIF Number of the applicant. The length of this field is 255.                                    |
      | CAS_Disb_16 | <ProductType> | hostCifNumber              | This field signifies the host CIF number of the applicant. The length of the field is 100.                                            |
      | CAS_Disb_16 | <ProductType> | applicationNumber          | This field signifies the system generated Application ID tagged with an application in database. The length of the field is 100.      |
      | CAS_Disb_16 | <ProductType> | applicantType              | This field signifies the Applicant type. The valid value of the field will be from Dtype-CustomerType and possible values are individ |
      | CAS_Disb_16 | <ProductType> | firstName                  | This field signifies the first name of the applicant. This field is mandatory when customer type is Individual. The length of the fie |
      | CAS_Disb_16 | <ProductType> | middleName                 | This field signifies the middle name of the applicant. This field is optional when customer type is Individual. The length of the fie |
      | CAS_Disb_16 | <ProductType> | lastName                   | This field signifies the last name of the applicant. This field is mandatory when customer type is Individual. The length of the fiel |
      | CAS_Disb_16 | <ProductType> | fullName                   | This field signifies the full name of the applicant. This field is mandatory when Applicant is Individual. The length of the field is |
      | CAS_Disb_16 | <ProductType> | instName                   | This field signifies the Institution Name. This field is mandatory whencustomer type is Non-Individual. The length of the field is 25 |
      | CAS_Disb_16 | <ProductType> | productType                | This field signifies the Product Type code in FinnOne Neo. Sample values are Personal Finance, Home Finance, Auto Finance, Education  |
      | CAS_Disb_16 | <ProductType> | mobile                     | This block signifies the Mobile number associated with the customer.                                                                  |
      | CAS_Disb_16 | <ProductType> | countryCode                | This field signifies the country code of the mobile number. The valid value of the field will be as per Country master. The length of |
      | CAS_Disb_16 | <ProductType> | isdCode                    | This field signifies the isd code associated with mobile number. The length of the field is 255.                                      |
      | CAS_Disb_16 | <ProductType> | phoneNumber                | This field signifies the primary mobile number. The length of the field is 255.                                                       |
      | CAS_Disb_16 | <ProductType> | email                      | This field signifies the primary Email ID of the applicant. Email address enter should be valid. The length of the field is 255.      |
      | CAS_Disb_16 | <ProductType> | identificationDetails      | This field signifies IdentificationDetails for customer Type Individual/Non-Individual. This field is mandatory.                      |
      | CAS_Disb_16 | <ProductType> | identificationType         | This field signifies the Identification Type valid as per FinnOne Neo. Sample values are PAN, Aadhar No., Trade License Number, Emira |
      | CAS_Disb_16 | <ProductType> | identificationNumber       | This field signifies the identification number of the customer against the identification type. This field is mandatory when identifi |
      | CAS_Disb_16 | <ProductType> | bankDetails                | BankDetailsMandate                                                                                                                    |
      | CAS_Disb_16 | <ProductType> | bankName                   | This field signifies the bank name associated with the applicant in application. The valid value of the field will be from External   |
      | CAS_Disb_16 | <ProductType> | bankCode                   | This field signifies the bank code of bank name associated with the applicant in application. The valid value of the field will be f  |
      | CAS_Disb_16 | <ProductType> | bankId                     | This field signifies the DepositBankAccount ID from the bank branch master. The length of the field is 19.                            |
      | CAS_Disb_16 | <ProductType> | bankBranchCode             | This field signifies the bank branch code of the bank. The valid value of the field will be from External bank master. The length of  |
      | CAS_Disb_16 | <ProductType> | branchId                   | This field signifies the bank branch ID. The valid value of the field will be from External bank master. The length of the field is   |
      | CAS_Disb_16 | <ProductType> | ifscCode                   | This field signifies the IFSC code of the bank associated with the instrument. The valid value will be from External Bank master. Th  |
      | CAS_Disb_16 | <ProductType> | micrCode                   | This field signifies the MICR code of the bank branch associated with the instrument. The valid value will be from External Bank mas  |
      | CAS_Disb_16 | <ProductType> | city                       | This field signifies the city associated with bank branch. The valid value of the field will be from Cities master. The length of th  |
      | CAS_Disb_16 | <ProductType> | bankingLocation            | This field signifies the banking location associated with bank branch. The location should be valid as per the Banking Location mast  |
      | CAS_Disb_16 | <ProductType> | barCode                    | This field signifies the Bar Code of the bank. The length of the field is 100.                                                        |
      | CAS_Disb_16 | <ProductType> | accountType                | This field signifies the bank account type of the customer. The valid value will be from Dtype-AccountType and sample values are Sav  |
      | CAS_Disb_16 | <ProductType> | accountSubType             | This field signifies the account sub type as NRE/NRO account. This field is applicable when account type is saving or current. The v  |
      | CAS_Disb_16 | <ProductType> | accountNumber              | This field signifies the bank account number of the customer. Account number should be valid as per the configuration in external ba  |
      | CAS_Disb_16 | <ProductType> | iban                       | This field signifies the International Bank Account Number of the customer. The length of the field is 255.                           |
      | CAS_Disb_16 | <ProductType> | accountName                | This field signifies the Account Name of the customer. The length of the field is 255.                                                |
      | CAS_Disb_16 | <ProductType> | repaymentDetails           | RepaymentDetailsMandate                                                                                                               |
      | CAS_Disb_16 | <ProductType> | repaymentTowards           | This field signifies the repayment towards. The Valid value will be from Dtype:RepaymentContributionBasisType Possible values are 1-  |
      | CAS_Disb_16 | <ProductType> | repaymentContribution      | This field signifies the repayment contribution. The repayment contribution can be from 0 to 100. The Length of the field is 3.       |
      | CAS_Disb_16 | <ProductType> | effectiveDate              | This field signifies mandate effective date. The valid date format is DD-MM-YYYY.                                                     |
      | CAS_Disb_16 | <ProductType> | expiryDate                 | This field signifies the mandate expiry date. The valid date format is DD-MM-YYYY.                                                    |
      | CAS_Disb_16 | <ProductType> | nextDueDate                | This field signifies the EMI next due date. The valid date format is DD-MM-YYYY.                                                      |
      | CAS_Disb_16 | <ProductType> | firstInstallmentDate       | This field signifies the date of first installment corresponding to the provided repayment schedule. The valid date format is DD-MM-  |
      | CAS_Disb_16 | <ProductType> | installmentFrequency       | This field signifies the payment frequency of the application. The valid value of the field will be from Dtype:RepayPolicyRepaymentF  |
      | CAS_Disb_16 | <ProductType> | noOfInstallments           | This field signifies the Total Number of Installment. The length of the field is 4.                                                   |
      | CAS_Disb_16 | <ProductType> | sumOfInstallmentAmount     | This block signifies the amount. The field name signifies the type of amount.                                                         |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode (excluded) | This field signifies the currency code of the scheme value. The valid value of the field is as per Currency Master. The default valu  |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               | This field signifies the non base value. The length of this field is 18 with a decimal precision of 2.                                |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               | This field signifies the currency code of the base value. The valid value will be from implemented currency code.The length of this   |
      | CAS_Disb_16 | <ProductType> | baseValue                  | This field signifies the base value. The length of this field is 18 with a decimal precision of 2.                                    |
      | CAS_Disb_16 | <ProductType> | mandateNature              | This field signifies the nature of Mandate. The valid value of the field will be as per Dtype-MandateNature and sample values are Cl  |
      | CAS_Disb_16 | <ProductType> | mandateType                | This field signifies the mandate type. The valid value of the field will be from Dtype: MandateType and possible values are New or E  |
      | CAS_Disb_16 | <ProductType> | tempAccountNumber          | This field signifies the temporary account number. The length of the field is 255                                                     |
      | CAS_Disb_16 | <ProductType> | custodianType              | This field signifies the nature of the custodian type. The valid value of the field will be from Dtype-CustodianType. The length of   |
      | CAS_Disb_16 | <ProductType> | custodianDescription       | This field signifies the custodian description. This field is mandatory when mandateType is Existing. The length of the field is 255  |
      | CAS_Disb_16 | <ProductType> | capAmountInitiated         | This block signifies the amount. The field name signifies the type of amount.                                                         |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            | This field signifies the currency code of the scheme value. The valid value of the field is as per Currency Master. The default valu  |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               | This field signifies the non base value. The length of this field is 18 with a decimal precision of 2.                                |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               | This field signifies the currency code of the base value. The valid value will be from implemented currency code.The length of this   |
      | CAS_Disb_16 | <ProductType> | baseValue                  | This field signifies the base value. The length of this field is 18 with a decimal precision of 2.                                    |
      | CAS_Disb_16 | <ProductType> | maxEmiAmount               | This block signifies the amount. The field name signifies the type of amount.                                                         |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            | This field signifies the currency code of the scheme value. The valid value of the field is as per Currency Master. The default valu  |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               | This field signifies the non base value. The length of this field is 18 with a decimal precision of 2.                                |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               | This field signifies the currency code of the base value. The valid value will be from implemented currency code.The length of this   |
      | CAS_Disb_16 | <ProductType> | baseValue                  | This field signifies the base value. The length of this field is 18 with a decimal precision of 2.                                    |
      | CAS_Disb_16 | <ProductType> | nextEmiAmount              | This block signifies the amount. The field name signifies the type of amount.                                                         |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            | This field signifies the currency code of the scheme value. The valid value of the field is as per Currency Master. The default valu  |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               | This field signifies the non base value. The length of this field is 18 with a decimal precision of 2.                                |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               | This field signifies the currency code of the base value. The valid value will be from implemented currency code.The length of this   |
      | CAS_Disb_16 | <ProductType> | baseValue                  | This field signifies the base value. The length of this field is 18 with a decimal precision of 2.                                    |
      | CAS_Disb_16 | <ProductType> | documentDetails            | This block signifies the documents which needs to shared with third party system. The valid value of document will be from Document   |
      | CAS_Disb_16 | <ProductType> | documentFileName           | This field signifies the document name. The valid value of document will be from Document Master. This field is mandatory when Docum  |
      | CAS_Disb_16 | <ProductType> | document                   | This field signifies the document in base 64 format. This field is mandatory when Document Details is provided.                       |
      | CAS_Disb_16 | <ProductType> | mandateVerificationDetails | MandateVerificationDetails                                                                                                            |
      | CAS_Disb_16 | <ProductType> | verificationStatus         | This field signifies the mandate verification status. The valid value of the field will be from Dtype: MandateVerificationStatusType  |
      | CAS_Disb_16 | <ProductType> | verifiedBy                 | This field signifies the who has done the verification. The valid value of the field will be from Dtype: MandateVerifiedByType and po |
      | CAS_Disb_16 | <ProductType> | verificationAgency         | This field signifies the verification agency. The valid of the field will be from Business Partner Master. This field is applicable a |
      | CAS_Disb_16 | <ProductType> | notifyCustomer             | This field signifies whether the notification link to the customer is shared by the third party or by the financial institution itsel |
      | CAS_Disb_16 | <ProductType> | expireInHours              | This field signifies the time in hours after which the mandate registration link will expire. If applicant does not accept the mandat |
      | CAS_Disb_16 | <ProductType> | dueDay                     | This field signifies the due day of the loan account number in which mandate is to be registered. The length of the field is 2.       |
      | CAS_Disb_16 | <ProductType> | nachCollectedType          | This field signifies the type of collection. Instalment=1, Security=2 ,Shadow=3, cancelled=4. The length of the field is 3.           |
      | CAS_Disb_16 | <ProductType> | nachRegistrationType       | This field signifies the Mandate registration type. The valid value of the field will be from Dtype nachRegistrationType. And possibl |
      | CAS_Disb_16 | <ProductType> | dynamicJsonData            | This field signifies the data push object for sharing additional data in the request.                                                 |
      | CAS_Disb_16 | <ProductType> | requestReferenceNumber     | This field signifies the unique reference number of the request. This number would be generated by FinnOne Neo CAS and shared with th |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17983: <Description> of <Fields> should be present in mandate registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Description>" of "<Fields>" should be present in mandate registration API response details
    Examples:
      | APIName     | ProductType   | Fields                 | Description                                                                                                   |
      | CAS_Disb_16 | <ProductType> | responseStatus         | This field signifies the response status. The valid value will be REQUEST_ACKNOWLEDGED_RESPONSE_PENDING_ASYNC |
      | CAS_Disb_16 | <ProductType> | requestReferenceNumber | This field signifies the Registration Acknowledgment Number received in response.                             |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17984: <ColumnLayout> samples functionality should working properly in mandate registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user click on "<ColumnLayout>" toggle button
    Then "<ColumnLayout>" samples funcationality should working properly
    Examples:
      | APIName     | ProductType   | ColumnLayout |
      | CAS_Disb_16 | <ProductType> | show         |
      | CAS_Disb_16 | <ProductType> | hide         |

#FeatureID-ACAUTOCAS-16525
Scenario: ACAUTOCAS-17985: Check expand all functionality in documentation section for mandate registration service CAS_Disb_16 response details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user expands Islamic pack
    Then Expand All functionality should work properly

#FeatureID-ACAUTOCAS-16525
Scenario: ACAUTOCAS-17986: Check collapse all functionality in documentation section for mandate registration service CAS_Disb_16 response details
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on documentation section
    And user collapses Islamic pack
    Then Collapse All functionality should work properly

# PQM-3_CAS-192536,3_CAS-200581
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17987: Hit the <APIName> via try now feature for <ProductType> application for mandate registration service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName     | ProductType   |
      | CAS_Disb_16 | <ProductType> |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17988: Response should be generated successfully for <ProductType> application for mandate registration service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateRegistration>" and row <Mandate_mandateRegistration_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with proper response details for "<APIName>"
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateRegistration | Mandate_mandateRegistration_rowNum |
      | CAS_Disb_16 | <ProductType> | mandate.xlsx | mandate_registration        | 1                                  |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17989: The service should not get executed successfully for <ProductType> application for mandate registration service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateRegistration>" and row <Mandate_mandateRegistration_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    When user click on send request button
    Then API should not get executed successfully for "<APIName>"
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateRegistration | Mandate_mandateRegistration_rowNum |
      | CAS_Disb_16 | <ProductType> | mandate.xlsx | mandate_registration        | 2                                  |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17990: Response message should be SUCCESS for <ProductType> application for mandate registration service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user click on try now button on API center
    And user enters access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateRegistration>" and row <Mandate_mandateRegistration_rowNum>
    And user update the json of "<APIName>"
    When user click on send request button
    Then Api hit successfully with proper SUCCESS message for "<APIName>"
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateRegistration | Mandate_mandateRegistration_rowNum |
      | CAS_Disb_16 | <ProductType> | mandate.xlsx | mandate_registration        | 3                                  |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17991: Response should be customErrorResponse for <ProductType> application for mandate registration service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateRegistration>" and row <Mandate_mandateRegistration_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Api hit successfully with custom error response details for "<APIName>"
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateRegistration | Mandate_mandateRegistration_rowNum |
      | CAS_Disb_16 | <ProductType> | mandate.xlsx | mandate_registration        | 4                                  |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17992: <Fields> should be present in mandate registration service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Fields>" should be present in Mandate API header parameter details
    Examples:
      | APIName     | ProductType   | Fields            |
      | CAS_Disb_16 | <ProductType> | access_token      |
      | CAS_Disb_16 | <ProductType> | Content-Type      |
      | CAS_Disb_16 | <ProductType> | moduleProductCode |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17993: <Status> <Fields> should be present in mandate registration service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<Status>" "<Fields>" should be present in Mandate API header parameter details
    Examples:
      | APIName     | ProductType   | Fields            | Status   |
      | CAS_Disb_16 | <ProductType> | access_token      | required |
      | CAS_Disb_16 | <ProductType> | Content-Type      | required |
      | CAS_Disb_16 | <ProductType> | moduleProductCode | required |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17994: <Description> of <Fields> should be present in mandate registration service <APIName> header details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<Description>" of "<Fields>" should be present in Mandate API header parameter details
    Examples:
      | APIName     | ProductType   | Fields            | Description                                                                               |
      | CAS_Disb_16 | <ProductType> | access_token      | Token based authentication is used to access an API.                                      |
      | CAS_Disb_16 | <ProductType> | Content-Type      | It represents the content type of request.                                                |
      | CAS_Disb_16 | <ProductType> | moduleProductCode | This field signifies the code of the module who is requesting for E Mandate Registration. |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17995: <Status> <Fields> should be present in mandate registration service<APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<dataType>" "<Fields>" data type should be present in Mandate API header parameter details
    Examples:
      | APIName     | ProductType   | Fields            | dataType |
      | CAS_Disb_16 | <ProductType> | access_token      | string   |
      | CAS_Disb_16 | <ProductType> | Content-Type      | string   |
      | CAS_Disb_16 | <ProductType> | moduleProductCode | string   |

#PQM-7_CAS-193262
#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17996: <Fields> is <DataType> datatype should be present in mandate registration service <APIName> request details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    Then "<DataType>" data type of "<Fields>" should be present in mandate registration API request details
    Examples:
      | APIName     | ProductType   | Fields                     | DataType         |
      | CAS_Disb_16 | <ProductType> | productProcessor           | string           |
      | CAS_Disb_16 | <ProductType> | referenceNumber            | string           |
      | CAS_Disb_16 | <ProductType> | cifNumber                  | string           |
      | CAS_Disb_16 | <ProductType> | hostCifNumber              | string           |
      | CAS_Disb_16 | <ProductType> | applicationNumber          | string           |
      | CAS_Disb_16 | <ProductType> | applicantType              | string           |
      | CAS_Disb_16 | <ProductType> | firstName                  | string           |
      | CAS_Disb_16 | <ProductType> | middleName                 | string           |
      | CAS_Disb_16 | <ProductType> | lastName                   | string           |
      | CAS_Disb_16 | <ProductType> | fullName                   | string           |
      | CAS_Disb_16 | <ProductType> | instName                   | string           |
      | CAS_Disb_16 | <ProductType> | productType                | string           |
      | CAS_Disb_16 | <ProductType> | mobile                     | object           |
      | CAS_Disb_16 | <ProductType> | countryCode                | string           |
      | CAS_Disb_16 | <ProductType> | isdCode                    | string           |
      | CAS_Disb_16 | <ProductType> | phoneNumber                | string           |
      | CAS_Disb_16 | <ProductType> | email                      | string           |
      | CAS_Disb_16 | <ProductType> | identificationDetails      | Array of objects |
      | CAS_Disb_16 | <ProductType> | identificationType         | string           |
      | CAS_Disb_16 | <ProductType> | identificationNumber       | string           |
      | CAS_Disb_16 | <ProductType> | bankDetails                | object           |
      | CAS_Disb_16 | <ProductType> | bankName                   | string           |
      | CAS_Disb_16 | <ProductType> | bankCode                   | string           |
      | CAS_Disb_16 | <ProductType> | bankId                     | integer          |
      | CAS_Disb_16 | <ProductType> | bankBranchCode             | string           |
      | CAS_Disb_16 | <ProductType> | branchId                   | integer          |
      | CAS_Disb_16 | <ProductType> | ifscCode                   | string           |
      | CAS_Disb_16 | <ProductType> | micrCode                   | string           |
      | CAS_Disb_16 | <ProductType> | city                       | string           |
      | CAS_Disb_16 | <ProductType> | bankingLocation            | string           |
      | CAS_Disb_16 | <ProductType> | barCode                    | string           |
      | CAS_Disb_16 | <ProductType> | accountType                | string           |
      | CAS_Disb_16 | <ProductType> | accountSubType             | string           |
      | CAS_Disb_16 | <ProductType> | accountNumber              | string           |
      | CAS_Disb_16 | <ProductType> | iban                       | string           |
      | CAS_Disb_16 | <ProductType> | accountName                | string           |
      | CAS_Disb_16 | <ProductType> | repaymentDetails           | object           |
      | CAS_Disb_16 | <ProductType> | repaymentTowards           | string           |
      | CAS_Disb_16 | <ProductType> | repaymentContribution      | number           |
      | CAS_Disb_16 | <ProductType> | effectiveDate              | string           |
      | CAS_Disb_16 | <ProductType> | expiryDate                 | string           |
      | CAS_Disb_16 | <ProductType> | nextDueDate                | string           |
      | CAS_Disb_16 | <ProductType> | firstInstallmentDate       | string           |
      | CAS_Disb_16 | <ProductType> | installmentFrequency       | string           |
      | CAS_Disb_16 | <ProductType> | noOfInstallments           | integer          |
      | CAS_Disb_16 | <ProductType> | sumOfInstallmentAmount     | string           |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode (excluded) | string           |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               | number           |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               | string           |
      | CAS_Disb_16 | <ProductType> | baseValue                  | number           |
      | CAS_Disb_16 | <ProductType> | mandateNature              | string           |
      | CAS_Disb_16 | <ProductType> | mandateType                | string           |
      | CAS_Disb_16 | <ProductType> | tempAccountNumber          | string           |
      | CAS_Disb_16 | <ProductType> | custodianType              | string           |
      | CAS_Disb_16 | <ProductType> | custodianDescription       | string           |
      | CAS_Disb_16 | <ProductType> | capAmountInitiated         | object           |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            | string           |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               | number           |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               | string           |
      | CAS_Disb_16 | <ProductType> | baseValue                  | number           |
      | CAS_Disb_16 | <ProductType> | maxEmiAmount               | object           |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            | string           |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               | number           |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               | string           |
      | CAS_Disb_16 | <ProductType> | baseValue                  | number           |
      | CAS_Disb_16 | <ProductType> | nextEmiAmount              | object           |
      | CAS_Disb_16 | <ProductType> | nonBaseCurrCode            | string           |
      | CAS_Disb_16 | <ProductType> | nonBaseValue               | number           |
      | CAS_Disb_16 | <ProductType> | baseCurrCode               | string           |
      | CAS_Disb_16 | <ProductType> | baseValue                  | number           |
      | CAS_Disb_16 | <ProductType> | documentDetails            | Array of objects |
      | CAS_Disb_16 | <ProductType> | documentFileName           | string           |
      | CAS_Disb_16 | <ProductType> | document                   | Array of strings |
      | CAS_Disb_16 | <ProductType> | mandateVerificationDetails | object           |
      | CAS_Disb_16 | <ProductType> | verificationStatus         | string           |
      | CAS_Disb_16 | <ProductType> | verifiedBy                 | string           |
      | CAS_Disb_16 | <ProductType> | verificationAgency         | string           |
      | CAS_Disb_16 | <ProductType> | notifyCustomer             | boolean          |
      | CAS_Disb_16 | <ProductType> | expireInHours              | integer          |
      | CAS_Disb_16 | <ProductType> | dueDay                     | string           |
      | CAS_Disb_16 | <ProductType> | nachCollectedType          | integer          |
      | CAS_Disb_16 | <ProductType> | nachRegistrationType       | string           |
      | CAS_Disb_16 | <ProductType> | dynamicJsonData            | string           |
      | CAS_Disb_16 | <ProductType> | requestReferenceNumber     | string           |

#FeatureID-ACAUTOCAS-16525
Scenario Outline: ACAUTOCAS-17997: <Fields> is <DataType> datatype should be present in mandate registration service <APIName> response details for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    When user searches "<APIName>" in documentation and opens
    And user open response details in API center
    Then "<DataType>" data type of "<Fields>" should be present in mandate registration API response details
    Examples:
      | APIName     | ProductType   | Fields                 | DataType |
      | CAS_Disb_16 | <ProductType> | responseStatus         | string   |
      | CAS_Disb_16 | <ProductType> | requestReferenceNumber | string   |
      | CAS_Disb_16 | <ProductType> | status                 | string   |
      | CAS_Disb_16 | <ProductType> | errorMap               | string   |
      | CAS_Disb_16 | <ProductType> | property1              | string   |
      | CAS_Disb_16 | <ProductType> | property2              | string   |
      | CAS_Disb_16 | <ProductType> | mandateId              | string   |
      | CAS_Disb_16 | <ProductType> | responsePacket         | string   |

#PQM-15_CAS-192536,15_CAS-200581
#Not Implementable

# PQM-5_CAS-192536,5_CAS-200581
Scenario Outline: ACAUTOCAS-17998: Request should successfully get hit null in each data for <ProductType> application for mandate registration service
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateRegistration>" and row <Mandate_mandateRegistration_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters access token
    When user click on send request button
    Then Request should successfully get hit with null values with custom error in response
    Examples:
      | APIName     | ProductType   | MandateWB    | Mandate_mandateRegistration | Mandate_mandateRegistration_rowNum |
      | CAS_Disb_16 | <ProductType> | mandate.xlsx | mandate_registration        | 0                                  |

Scenario Outline: ACAUTOCAS-17999: Validation should come for fields AccessToken <AccessToken> ContentType <ContentType> ModuleProductCode <ModuleProductCode> for <ProductType> application for mandate registration service with <Result>
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on get access token
    And user fills details for access token
    And user generates access token
    And user copy the access token
    And user reads data from the excel file "<MandateWB>" under sheet "<Mandate_mandateRegistration>" and row <Mandate_mandateRegistration_rowNum>
    And user click on try now button on API center
    And user update the json of "<APIName>"
    And user enters "<AccessToken>" "<ContentType>" with "<ModuleProductCode>"
    When user click on send request button
    Then Api hit successfully with "<Result>" response details for "<APIName>"
    Examples:
      | Result  | APIName     | AccessToken | ContentType | ModuleProductCode | ProductType   | MandateWB    | Mandate_mandateRegistration | Mandate_mandateRegistration_rowNum |
      | Failure | CAS_Disb_16 | fill        | notFill     | notFill           | <ProductType> | mandate.xlsx | mandate_registration        | 5                                  |
      | Failure | CAS_Disb_16 | notFill     | fill        | notFill           | <ProductType> | mandate.xlsx | mandate_registration        | 6                                  |
      | Failure | CAS_Disb_16 | notFill     | notFill     | fill              | <ProductType> | mandate.xlsx | mandate_registration        | 7                                  |
      | Failure | CAS_Disb_16 | fill        | fill        | notFill           | <ProductType> | mandate.xlsx | mandate_registration        | 8                                  |
      | Failure | CAS_Disb_16 | notFill     | fill        | fill              | <ProductType> | mandate.xlsx | mandate_registration        | 9                                  |
      | Failure | CAS_Disb_16 | fill        | notFill     | fill              | <ProductType> | mandate.xlsx | mandate_registration        | 10                                 |
      | Failure | CAS_Disb_16 | notFill     | notFill     | notFill           | <ProductType> | mandate.xlsx | mandate_registration        | 11                                 |

Scenario Outline: ACAUTOCAS-18000: <Fields> should be present in mandate registration service <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then "<Fields>" should be present in try now page
    Examples:
      | APIName     | ProductType   | Fields            |
      | CAS_Disb_16 | <ProductType> | access_token      |
      | CAS_Disb_16 | <ProductType> | Content-Type      |
      | CAS_Disb_16 | <ProductType> | moduleProductCode |

Scenario Outline: ACAUTOCAS-18001: <Mandatory> <Fields> should be present in mandate registration service <APIName> on TRY NOW page for <ProductType> application
    And user logged in "APIcenter" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user clicks on Documentation tab
    And user searches "<APIName>" in documentation and opens
    And user click on try now button on API center
    Then user should be able to see "<Fields>" marked as mandatory
    Examples:
      | APIName     | ProductType   | Fields            | Mandatory |
      | CAS_Disb_16 | <ProductType> | access_token      | required  |
      | CAS_Disb_16 | <ProductType> | Content-Type      | required  |
      | CAS_Disb_16 | <ProductType> | moduleProductCode | required  |
