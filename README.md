# Samsung

## Contents

 1. Setup Database
 2. Setup & Run Springboot Application 
 3. Setup Red-hat Decision Manager on EAP
 4. End-To-End Testing

## 1. Setup Database
For this we will be using mariadb database on podman containor.
-   podman pull mariadb
-   podman run -p 0.0.0.0:3306:3306 --name some-mariadb -v /datadir:/var/lib/mysql -e MARIADB_ROOT_PASSWORD=redhat -d mariadb

#### Login to DB Container & Create Database
- podman cp samsung_dbFinalData.sql some-mariadb:/
- docker exec -it some-mariadb /bin/bash
- mysql -u root -p (Provide Password:redhat)
- CREATE DATABASE Samsung_DB;
- show databases;
- use Samsung_DB;
- show tables;
- exit(from mariadb)
- mysql -u root -p Samsung_DB < samsung_dbFinalData.sql
- exit(from container)

## 2. Setup & Run Springboot Application 
### Run Application Locally
- yum install -y maven (install maven in base machine)
- mvn -v (Check if maven is installed)
- cd incentivepayout (go to code directory)
- mvn clean install (Create jarfile)
- java -jar target/incentivepayout-1.0.0.jar (Give correct name of jar file.)

#### Run Application on Podman
- Go to the directory where Dockerfile is present.
- cd incentivepayout 
- mvn clean install (To create jar file)
- podman build -t incentivepayout . (Build the podman image)
- podman run --name incentivepayout -p 0.0.0.0:9080:9080 -it incentivepayout:latest (Run podman container)


## 3. Setup Red-hat Decision Manager on EAP

#### Download the required packages:
-  Download [Red Hat JBoss Enterprise Application Platform 7.3.0](https://access.redhat.com/jbossnetwork/restricted/softwareDetail.html?softwareId=80101&product=appplatform&version=7.3&downloadType=distributions)
- Download [Red Hat JBoss Enterprise Application Platform 7.3 Update 09](https://access.redhat.com/jbossnetwork/restricted/softwareDetail.html?softwareId=101511&product=appplatform&version=7.3&downloadType=patches)
- Download [Red Hat Decision Manager 7.11.1 Decision Central Deployable for EAP 7](https://access.redhat.com/jbossnetwork/restricted/softwareDetail.html?softwareId=99951&product=rhdm&version=7.11.1&downloadType=distributions)
- Download [Red Hat Decision Manager 7.11.1 Process Server for All Supported EE8 Containers](https://access.redhat.com/jbossnetwork/restricted/softwareDetail.html?softwareId=99961&product=rhdm&version=7.11.1&downloadType=distributions)

#### Setup JBOSS EAP

- cd {eap-home}/bin. (Unzip the JBoss EAP package and go to its bin directory.)
- Run add-user script using this command: ./add-user (Create a Management User,Below are values to give after running script) 
	- Type of User: Management,
	- Username: Demo
	- Password: WFLYDM0099
	- Are you sure you want to use the password entered yes/no?: yes
	- What groups do you want this user to belong to?: root,admin,administrator,superuser,rest-all
	- Is this correct yes/no?: yes
	- Is this new user going to be used for one AS process to connect to another AS process? e.g. for a slave host controller connecting to the master or for a Remoting connection for server to server EJB calls yes/no?.: no
You will get promts like below give values specified above: 
 
 >What type of user do you wish to add? 
 a) Management User (mgmt-users.properties) 
 b) Application User (application-users.properties)
 (a): a
>Enter the details of the new user to add.
>Using realm 'ManagementRealm' as discovered from the existing property files.
>Username : Demo
>Password recommendations are listed below. To modify these restrictions edit the add-user.properties configuration file.
> - The password should be different from the username
> - The password should not be one of the following restricted values {root, admin, administrator}
> - The password should contain at least 8 characters, 1 alphabetic character(s), 1 digit(s), 1 non-alphanumeric symbol(s)
>Password : WFLYDM0099: 
>
>- Password should have at least 8 characters!
>- Are you sure you want to use the password entered yes/no? yes
>
>- Re-enter Password : 
>
>What groups do you want this user to belong to? (Please enter a comma separated list, or leave blank for none)[  ]:### root,admin,administrator,superuser,restall
>About to add user 'Demo' for realm 'ManagementRealm'
>
>Is this correct yes/no? yes
>
>Added user 'Demo' to file '/home/shardul/Videos/jboss-eap-7.3/standalone/configuration/mgmt-users.properties'
>Added user 'Demo' to file '/home/shardul/Videos/jboss-eap-7.3/domain/configuration/mgmt-users.properties'
>Added user 'Demo' with groups root,admin,administrator,superuser,restall to file '/home/shardul/Videos/jboss-eap-7.3/standalone/configuration/mgmt-groups.properties'
>
>Added user 'Demo' with groups root,admin,administrator,superuser,restall to file '/home/shardul/Videos/jboss-eap-7.3/domain/configuration/mgmt-groups.properties'
>Is this new user going to be used for one AS process to connect to another AS process? e.g. for a slave host controller connecting to the master or for a Remoting connection for server to server EJB calls.
>yes/no? no

- Start the EAP server by `./standalone.sh -c standalone-full.xml`.
- Login to EAP management console http://localhost:9990/ (With user Demo)
- Add downloaded patch in the patching option and restart the server.(Make Sure you give Executable permision the the patch file: chmod +x path of the zipped file)
- Stop the Server.
- Extract the Decision Central files and copy in the EAP.
- Extract the Kie-server-ee8 file and do the below steps:
	 - Copy the kie-server.war file to {eap-home}/standalone/deployments location.
	 - Create a blank file with name kie-server.war.dodeploy
	 - Copy all the files present inside SecurityPolicy directory from Extracted and paste in to  {eap-home}/bin
- Change `standalone-full.xml` Configuration file.
>Add below lines inside <system-properties> tags or uncomment is already commented.
>
>  <property name="org.kie.server.location" value="http://localhost:8080/kie-server/services/rest/server"/>
	   <property name="org.kie.server.controller" value="http://localhost:8080/decision-central/rest/controller"/>
	   <property name="org.kie.server.controller.user" value="controllerUser"/>
	   <property name="org.kie.server.controller.pwd" value="controllerUser1234"/>
	   <property name="org.kie.server.user" value="controllerUser"/>
	   <property name="org.kie.server.pwd" value="controllerUser1234"/>
	   <property name="org.kie.server.id" value="default-kieserver"/>

- Go to the application-users.properties  and application-roles.properties file and uncomment line with value controllerUser .
- Create a Application User From  `./add-user` (Username: redhat, Password: redhat, Groups to add: root,admin,administrator,kie-server,rest-all)
- Start the EAP server by `./standalone.sh -c standalone-full.xml`.


### Decision Central

- To Access the Decision Manager console login to the http://localhost:8080/decision-central/
- Select Design (For Create and modify projects).
- Add Space (Samsung).
- Import Project.
- Copy {Desicion-Manager-code} directory path to the Repository URL.
- Build the code.
- Deploy the code.
> Once the code is successfully build and deployed the code jar can be seen on kie-server.
-

## 4. End-To-End Testing

#### Middleware Testing (Using Postman)

-  Partner 1 and Scheme 1

> `http://0.0.0.0:9080/api/incentivepayout/partner?partnerId=PTNR1&scheme=1`
**Response** - 
>`{
"schemeName": "Scheme1",
"partnerId": "PTNR1",
"schemeStartDate": "01-Aug-21",
"schemeEndDate": "31-Aug-21",
"productType": "[FeaturePhone]",
"incentiveNature": "PER_UNIT",
"quantity": 7,
"perUnitPayout": 150.0,
"totalIncentivePayout": 1050.0
}`

-  Partner 4 and Scheme 1

> `http://0.0.0.0:9080/api/incentivepayout/partner?partnerId=PTNR4&scheme=1`
**Response** - 
>`{
"schemeName": "Scheme1",
"partnerId": "PTNR4",
"schemeStartDate": "01-Aug-21",
"schemeEndDate": "31-Aug-21",
"productType": "[FeaturePhone]",
"incentiveNature": "PER_UNIT",
"quantity": 0,
"perUnitPayout": 0.0,
"totalIncentivePayout": 0.0
}`

-  Partner 11 and Scheme 1

> `http://0.0.0.0:9080/api/incentivepayout/partner?partnerId=PTNR11&scheme=1`
**Response** - 
>`{
"partnerId": "PTNR11",
"message": "partnerId Does Not Exist"
}`

-  Partner 1 and Scheme 1a

> `http://0.0.0.0:9080/api/incentivepayout/partner?partnerId=PTNR1&scheme=1a`
**Response** - 
>`{
"schemeName": "Scheme1a",
"partnerId": "PTNR1",
"schemeStartDate": "01-Aug-21",
"schemeEndDate": "31-Aug-21",
"productType": "('Smartphone','Tab','Gear')",
"incentiveNature": "SLAB",
"isEligible": 0,
"saleValueAchievedExcMinDP": 68000.0,
"payoutPercent": 0.0,
"slabBasedPayout": 0.0
}`

-  Partner 3 and Scheme 1a

> `http://0.0.0.0:9080/api/incentivepayout/partner?partnerId=PTNR1&scheme=1a`
**Response** - 
>`{
"schemeName": "Scheme1a",
"partnerId": "PTNR3",
"schemeStartDate": "01-Aug-21",
"schemeEndDate": "31-Aug-21",
"productType": "[Smartphone,Tab,Gear]",
"incentiveNature": "SLAB",
"isEligible": 1,
"saleValueAchievedExcMinDP": 86000.0,
"payoutPercent": 0.0,
"slabBasedPayout": 0.0
}`

-  Partner 3 and Scheme 11

> `http://0.0.0.0:9080/api/incentivepayout/partner?partnerId=PTNR3&scheme=11`
**Response** - 
>`{
"schemeName": "Scheme11",
"message": "scheme Does Not Exists"
}`

#### Decision Central Testing (Execution Kie Server)

- Scheme1Configuration

> **Request** -
> `{
    "lookup": "incsession",
    "commands": [
        {
            "insert": {
                "return-object": true,
                "object": {
                    "com.samsung.incentive.Request": {
                        "schemeName": "Scheme1"
                    }
                }
            }
        },
        {
            "get-objects": {
                "out-identifier": "returnedObject"
            }
        },
        {
            "fire-all-rules": ""
        },
        {
            "dispose": {}
        }
    ]
}`
**Response** - 
`{
    "type": "SUCCESS",
    "msg": "Container incentive successfully called.",
    "result": {
        "execution-results": {
            "results": [
                {
                    "value": 1,
                    "key": ""
                },
                {
                    "value": [
                        {
                            "com.samsung.incentive.Request": {
                                "schemeName": "Scheme1",
                                "schemeStartDate": "01-Aug-21",
                                "schemeEndDate": "31-Aug-21",
                                "productType": "[FeaturePhone]",
                                "incentiveNature": "PER_UNIT",
                                "quantity": null,
                                "perUnitPayout": 0.0,
                                "totalIncentivePayout": 0.0,
                                "growthFactor": 0.0,
                                "minTarget": 0.0,
                                "maxTarget": 0.0,
                                "realTarget": 0.0,
                                "saleValuePreviousMonth": 0.0,
                                "saleValueAcheived": 0.0,
                                "gateFactorPercent": 0.0,
                                "isEligibleForPayout": 0,
                                "minProductPriceforExclusion": null,
                                "saleValueAchievedExcMinPP": 0.0,
                                "payoutPercent": 0.0,
                                "slabBasedPayout": 0.0
                            }
                        }
                    ],
                    "key": "returnedObject"
                }
            ],
            "facts": []
        }
    }
}`

- Scheme1perUnit

>  **Request** - 
`{
    "lookup": "incsession",
    "commands": [
        {
            "insert": {
                "return-object": true,
                "object": {
                    "com.samsung.incentive.Request": {
                        "schemeName": "Scheme1",
                        "incentiveNature": "PER_UNIT",
                        "quantity": 1
                    }
                }
            }
        },
        {
            "get-objects": {
                "out-identifier": "returnedObject"
            }
        },
        {
            "fire-all-rules": ""
        },
        {
            "dispose": {}
        }
    ]
}`
**Response** -
`{
    "type": "SUCCESS",
    "msg": "Container incentive successfully called.",
    "result": {
        "execution-results": {
            "results": [
                {
                    "value": 2,
                    "key": ""
                },
                {
                    "value": [
                        {
                            "com.samsung.incentive.Request": {
                                "schemeName": "Scheme1",
                                "schemeStartDate": "01-Aug-21",
                                "schemeEndDate": "31-Aug-21",
                                "productType": "[FeaturePhone]",
                                "incentiveNature": "PER_UNIT",
                                "quantity": 1,
                                "perUnitPayout": 150.0,
                                "totalIncentivePayout": 150.0,
                                "growthFactor": 0.0,
                                "minTarget": 0.0,
                                "maxTarget": 0.0,
                                "realTarget": 0.0,
                                "saleValuePreviousMonth": 0.0,
                                "saleValueAcheived": 0.0,
                                "gateFactorPercent": 0.0,
                                "isEligibleForPayout": 0,
                                "minProductPriceforExclusion": null,
                                "saleValueAchievedExcMinPP": 0.0,
                                "payoutPercent": 0.0,
                                "slabBasedPayout": 0.0
                            }
                        }
                    ],
                    "key": "returnedObject"
                }
            ],
            "facts": []
        }
    }
}`

- Scheme1aTargetandEligibility

> **Request** -
> `{
	"lookup": "incsession",
	"commands": [{
		"insert": {
			"return-object": true,
			"object": {
				"com.samsung.incentive.Request": {
					"schemeName": "Scheme1a",
					"incentiveNature": "SLAB",
					"saleValuePreviousMonth": 181000.0,
					"saleValueAchived": 332000.0
				}
			}
		}
	}, {
		"get-objects": {
			"out-identifier": "returnedObject"
		}
	}, {
		"fire-all-rules": ""
	}, {
		"dispose": {}
	}]
}`
**Response** -
`{
    "type": "SUCCESS",
    "msg": "Container incentive successfully called.",
    "result": {
        "execution-results": {
            "results": [
                {
                    "value": 2,
                    "key": ""
                },
                {
                    "value": [
                        {
                            "com.samsung.incentive.Request": {
                                "schemeName": "Scheme1a",
                                "schemeStartDate": "01-Aug-21",
                                "schemeEndDate": "31-Aug-21",
                                "productType": "[Smartphone,Tab,Gear]",
                                "incentiveNature": "SLAB",
                                "quantity": null,
                                "perUnitPayout": 0.0,
                                "totalIncentivePayout": 0.0,
                                "growthFactor": 1.2,
                                "minTarget": 125000.0,
                                "maxTarget": 0.0,
                                "realTarget": 183172.0,
                                "saleValuePreviousMonth": 181000.0,
                                "saleValueAcheived": 0.0,
                                "gateFactorPercent": 105.0,
                                "isEligibleForPayout": 0,
                                "minProductPriceforExclusion": 20000.0,
                                "saleValueAchievedExcMinPP": 0.0,
                                "payoutPercent": 0.0,
                                "slabBasedPayout": 0.0
                            }
                        }
                    ],
                    "key": "returnedObject"
                }
            ],
            "facts": []
        }
    }
}`

- SlabBasedPayout

> **Request** -
`	{
		"lookup": "incsession",
		"commands": [{
				"insert": {
					"return-object": true,
					"object": {
						"com.samsung.incentive.Request": {
							"schemeName": "Scheme1a",
							"saleValueAchievedExcMinPP": 332000.0
						}
					}
				}
			}, {
				"get-objects": {
					"out-identifier": "returnedObject"
				}
			}, {
				"fire-all-rules": ""
			},
			{
				"dispose": {}
			}
		]
	}`
**Response** -
`{
    "type": "SUCCESS",
    "msg": "Container incentive successfully called.",
    "result": {
        "execution-results": {
            "results": [
                {
                    "value": 2,
                    "key": ""
                },
                {
                    "value": [
                        {
                            "com.samsung.incentive.Request": {
                                "schemeName": "Scheme1a",
                                "schemeStartDate": "01-Aug-21",
                                "schemeEndDate": "31-Aug-21",
                                "productType": "[Smartphone,Tab,Gear]",
                                "incentiveNature": "SLAB",
                                "quantity": null,
                                "perUnitPayout": 0.0,
                                "totalIncentivePayout": 0.0,
                                "growthFactor": 0.0,
                                "minTarget": 0.0,
                                "maxTarget": 0.0,
                                "realTarget": 0.0,
                                "saleValuePreviousMonth": 0.0,
                                "saleValueAcheived": 0.0,
                                "gateFactorPercent": 0.0,
                                "isEligibleForPayout": 0,
                                "minProductPriceforExclusion": null,
                                "saleValueAchievedExcMinPP": 332000.0,
                                "payoutPercent": 1.5,
                                "slabBasedPayout": 4980.0
                            }
                        }
                    ],
                    "key": "returnedObject"
                }
            ],
            "facts": []
        }
    }
}`

- Scheme1aConfiguration

> **Request** - 
`{
    "lookup": "incsession",
    "commands": [
        {
            "insert": {
                "return-object": true,
                "object": {
                    "com.samsung.incentive.Request": {
                        "schemeName": "Scheme1a"
                    }
                }
            }
        },
        {
            "get-objects": {
                "out-identifier": "returnedObject"
            }
        },
        {
            "fire-all-rules": ""
        },
        {
            "dispose": {}
        }
    ]
}`
**Response** - 
`{
    "type": "SUCCESS",
    "msg": "Container incentive successfully called.",
    "result": {
        "execution-results": {
            "results": [
                {
                    "value": 1,
                    "key": ""
                },
                {
                    "value": [
                        {
                            "com.samsung.incentive.Request": {
                                "schemeName": "Scheme1a",
                                "schemeStartDate": "01-Aug-21",
                                "schemeEndDate": "31-Aug-21",
                                "productType": "[Smartphone,Tab,Gear]",
                                "incentiveNature": "SLAB",
                                "quantity": null,
                                "perUnitPayout": 0.0,
                                "totalIncentivePayout": 0.0,
                                "growthFactor": 0.0,
                                "minTarget": 0.0,
                                "maxTarget": 0.0,
                                "realTarget": 0.0,
                                "saleValuePreviousMonth": 0.0,
                                "saleValueAcheived": 0.0,
                                "gateFactorPercent": 0.0,
                                "isEligibleForPayout": 0,
                                "minProductPriceforExclusion": null,
                                "saleValueAchievedExcMinPP": 0.0,
                                "payoutPercent": 0.0,
                                "slabBasedPayout": 0.0
                            }
                        }
                    ],
                    "key": "returnedObject"
                }
            ],
            "facts": []
        }
    }
}`










