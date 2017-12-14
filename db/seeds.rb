# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Category : Distributed Computing
#  category = SkillCategory.create(description: "value")
#  SkillInventory.create(specific_skill: "value", skill_category: category)


    
Lookup.create(
  [
    {category:"gender", dropdown_value: "Male", order_value: 1},
    {category:"gender", dropdown_value: "Female", order_value: 1}
  ]
)

# Category : Operating System
  category = SkillCategory.create(description: "Operating System")
  SkillInventory.create(specific_skill: "MS Windows", skill_category: category)
  SkillInventory.create(specific_skill: "Unix", skill_category: category)
  SkillInventory.create(specific_skill: "Linux: Redhat", skill_category: category)
  SkillInventory.create(specific_skill: "VxWorks", skill_category: category)

# Category : Programming and scripting
  category = SkillCategory.create(description: "Programming and Scripting")
  SkillInventory.create(specific_skill: "C: Unix/Linux", skill_category: category)
  SkillInventory.create(specific_skill: "C#.NET", skill_category: category)
  SkillInventory.create(specific_skill: "C++: Unix/Linux", skill_category: category)
  SkillInventory.create(specific_skill: "Java : JFC (AWT/Swing)", skill_category: category)
  SkillInventory.create(specific_skill: "Java : SWT", skill_category: category)
  SkillInventory.create(specific_skill: "XML", skill_category: category)
  SkillInventory.create(specific_skill: "XML Schema", skill_category: category)
  SkillInventory.create(specific_skill: "JavaScript", skill_category: category)
  SkillInventory.create(specific_skill: "Unix/Linux Shell (sh,csh,ksh)", skill_category: category)

# Category : Distributed Computing
  category = SkillCategory.create(description: "Distributed Computing")
  SkillInventory.create(specific_skill: "RPC", skill_category: category)
  SkillInventory.create(specific_skill: "CORBA/IDL", skill_category: category)
  SkillInventory.create(specific_skill: "Java RMI", skill_category: category)

# Category : Database Management Systems (DBMSs)
  category = SkillCategory.create(description: "Database Management Systems (DBMSs)")
  SkillInventory.create(specific_skill: "RDB: Oracle", skill_category: category)
  SkillInventory.create(specific_skill: "RDB: PostgreSQL", skill_category: category)
  SkillInventory.create(specific_skill: "RDB: Versant", skill_category: category)
  SkillInventory.create(specific_skill: "RDB: MySQL", skill_category: category)

# Category : Product Specific Technology : Network Software
  category = SkillCategory.create(description: "Product Specific Technology : Network Software")
  SkillInventory.create(specific_skill: "IT: Web/DBMS/Security", skill_category: category)  
  SkillInventory.create(specific_skill: "NW: SIP/VoIP", skill_category: category)

# Category : Product Specific Technology : Broadban
  category = SkillCategory.create(description: "Product Specific Technology : Broadband")
  SkillInventory.create(specific_skill: "High Speed Optical (40G)", skill_category: category)
  SkillInventory.create(specific_skill: "10G Packet Ring", skill_category: category)
  SkillInventory.create(specific_skill: "TDM/Packet Integration", skill_category: category)
  SkillInventory.create(specific_skill: "Integrated EMS/NMS", skill_category: category)

# Category 
 category = SkillCategory.create(description: "Product Specific Technology : Mobile Infra/Core")
 SkillInventory.create(specific_skill: "WiMAX", skill_category: category)
 SkillInventory.create(specific_skill: "Mobile IP Protocol", skill_category: category)
 SkillInventory.create(specific_skill: "LTE (Super 3G) Wireless Technology", skill_category: category)
 SkillInventory.create(specific_skill: "Next Generation Mobile Network (4G)", skill_category: category)

# Category 
 category = SkillCategory.create(description: "Product Specific Technology : Embedded Software")
 SkillInventory.create(specific_skill: "Automotive Software: Car Navigation System", skill_category: category)
 SkillInventory.create(specific_skill: "Automotive Software: Digital Tachograph", skill_category: category)
 SkillInventory.create(specific_skill: "Automotive Software: Car Engine Control", skill_category: category)
 

# Category 
 category = SkillCategory.create(description: "Protocols")
 SkillInventory.create(specific_skill: "SNMP", skill_category: category)
 SkillInventory.create(specific_skill: "MPLS/GMPLS", skill_category: category)
 SkillInventory.create(specific_skill: "UDP/IP", skill_category: category)
 SkillInventory.create(specific_skill: "TCP/IP", skill_category: category)
 SkillInventory.create(specific_skill: "CLI", skill_category: category)
 SkillInventory.create(specific_skill: "FTP", skill_category: category)


# Category 
 category = SkillCategory.create(description: "Mobile Applications Development Platforms")
 SkillInventory.create(specific_skill: "Android", skill_category: category)
 SkillInventory.create(specific_skill: "IOS", skill_category: category)

# Category
 category = SkillCategory.create(description: "Software Design Methodology")
 SkillInventory.create(specific_skill: "Unified Modeling Language (UML)", skill_category: category)

# Category
 category = SkillCategory.create(description: "Web Application Development")
 SkillInventory.create(specific_skill: "J2EE :  JSP/Servlets", skill_category: category)
 SkillInventory.create(specific_skill: "J2EE :  Spring", skill_category: category)
 SkillInventory.create(specific_skill: "J2EE :  Struts", skill_category: category)
 SkillInventory.create(specific_skill: "J2EE :  Webservice", skill_category: category)
 SkillInventory.create(specific_skill: "J2EE :  JDBC", skill_category: category)
 SkillInventory.create(specific_skill: "J2EE :  JPA", skill_category: category)
 SkillInventory.create(specific_skill: "J2EE :  Hibernate", skill_category: category)
 SkillInventory.create(specific_skill: "MS .NET Framework", skill_category: category)
 SkillInventory.create(specific_skill: "ASP .NET MVC", skill_category: category)

# Category
 category = SkillCategory.create(description: "International Standards")
 SkillInventory.create(specific_skill: "CMMI for Development version 1.3", skill_category: category)
 SkillInventory.create(specific_skill: "PMBOK", skill_category: category)

# Category
 category = SkillCategory.create(description: "Cloud Computing")
 SkillInventory.create(specific_skill: "Machine-to-Machine (M2M) Cloud Service", skill_category: category)

# Category
 category = SkillCategory.create(description: "Configuration Management")
 SkillInventory.create(specific_skill: "Creating and Implementing a CM Plan", skill_category: category)
 SkillInventory.create(specific_skill: "Configuration Identification : Document Control and Directory Structure", skill_category: category)
 SkillInventory.create(specific_skill: "Configuration Identification : Revision History", skill_category: category)
 SkillInventory.create(specific_skill: "Configuration Control : Access and Security Control", skill_category: category)
 SkillInventory.create(specific_skill: "Configuration Control : Baselines", skill_category: category)
 SkillInventory.create(specific_skill: "Configuration Control : Change Control", skill_category: category)
 SkillInventory.create(specific_skill: "Configuration Control : Release Activities", skill_category: category)
 SkillInventory.create(specific_skill: "Backup and Restore", skill_category: category)
 SkillInventory.create(specific_skill: "Configuration Audits", skill_category: category)
 SkillInventory.create(specific_skill: "Configuration Status Accounting", skill_category: category)

# Category
 category = SkillCategory.create(description: "Decision Analysis and Resolution")
 SkillInventory.create(specific_skill: "Identify DAR opportunities", skill_category: category)
 SkillInventory.create(specific_skill: "Initiate a DAR event", skill_category: category)
 SkillInventory.create(specific_skill: "Formulate decision objective and scope", skill_category: category)
 SkillInventory.create(specific_skill: "Define criteria and weighting", skill_category: category)
 SkillInventory.create(specific_skill: "Identify alternatives", skill_category: category)
 SkillInventory.create(specific_skill: "Evaluate alternatives against criteria", skill_category: category)
 SkillInventory.create(specific_skill: "Select best alternative", skill_category: category)
 SkillInventory.create(specific_skill: "Approve and communicate decision", skill_category: category)

# Category
 category = SkillCategory.create(description: "Software Design & Modeling Tools")
 SkillInventory.create(specific_skill: "IBM Rational ROSE", skill_category: category)
 SkillInventory.create(specific_skill: "Jude/Astah", skill_category: category)
 SkillInventory.create(specific_skill: "Star UML", skill_category: category)
 SkillInventory.create(specific_skill: "MS Visio", skill_category: category)

# Category
 category = SkillCategory.create(description: "Coding & Debugging Tools")
 SkillInventory.create(specific_skill: "CheckStyle", skill_category: category)
 SkillInventory.create(specific_skill: "FindBugs", skill_category: category)

# Category
 category = SkillCategory.create(description: "Build Tools")
 SkillInventory.create(specific_skill: "ANT", skill_category: category)
 SkillInventory.create(specific_skill: "Maven", skill_category: category)

# Category
 category = SkillCategory.create(description: "Testing Tools")
 SkillInventory.create(specific_skill: "CPPUnit", skill_category: category)
 SkillInventory.create(specific_skill: "JUnit", skill_category: category)
 SkillInventory.create(specific_skill: "PowerMock", skill_category: category)
 SkillInventory.create(specific_skill: "EasyMock", skill_category: category)
 SkillInventory.create(specific_skill: "C++ Test", skill_category: category)
 SkillInventory.create(specific_skill: "JTest", skill_category: category)
 SkillInventory.create(specific_skill: "Quick Test Professional (QTP)", skill_category: category)

# Category
 category = SkillCategory.create(description: "Configuration Management & Revision Control Tools")
 SkillInventory.create(specific_skill: "Borland StarTeam", skill_category: category)
 SkillInventory.create(specific_skill: "SVN", skill_category: category)
 SkillInventory.create(specific_skill: "CVS", skill_category: category)
 SkillInventory.create(specific_skill: "Github", skill_category: category)
 SkillInventory.create(specific_skill: "Bit Bucket", skill_category: category)

# Category
 category = SkillCategory.create(description: "Integrated Development Environments (IDEs)")
 SkillInventory.create(specific_skill: "MS Visual Studio", skill_category: category)
 SkillInventory.create(specific_skill: "Eclipse", skill_category: category)
 SkillInventory.create(specific_skill: "NetBeans", skill_category: category)
 SkillInventory.create(specific_skill: "XMLSpy", skill_category: category)

# Category
 category = SkillCategory.create(description: "Team Collaboration Tools")
 SkillInventory.create(specific_skill: "MS Project", skill_category: category)
 SkillInventory.create(specific_skill: "Team Foundation Server", skill_category: category)
 SkillInventory.create(specific_skill: "Trello", skill_category: category)
 

