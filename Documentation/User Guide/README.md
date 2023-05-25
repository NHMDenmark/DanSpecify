# User Guide

This is the user guide with a brief and focused introduction to how to use various features of Specify. You can visit the following pages to learn more:

1. [Getting Started with Specify](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/1.%20Getting%20Started.md)
1. [Data Entry](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/2.%20Data%20Entry.md) (coming soon)
1. [Querying Data](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/3.%20Querying%20Data.md) (coming soon)
1. [Taxon Tree](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/4.%20Taxon%20Tree.md) (coming soon)
1. [Loans](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/5.%20Loans.md) (coming soon)
1. [Accessions](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/6.%20Accessions.md)  (coming soon)
1. [Labels & Reports](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/7.%20Labels%20%26%20Reports.md) (coming soon)
1. [Importing Data (Workbench)](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/8.%20Importing%20Data%20(Workbench).md) - (coming soon)
1. [Data Cleaning (OpenRefine)](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/9.%20Data%20Cleaning.md) 

# Frequently Asked Questions

This is an overview of frequently asked questions regarding the Specify installation at the Danish network of Natural History Museums (DNHM). 

1. [Where can I access Specify 7?](#where-can-i-access-specify-7)
1. [I need to (re)install Specify 6 ](#i-need-to-reinstall-specify-6)
1. [How do I create a support ticket?](#how-do-i-create-a-support-ticket)
1. [Why use Specify?](#why-use-specify)

If you cannot find an answer to your question here, please write to the Specify team: 

 - specify@snm.ku.dk 

You can also communicate with the team and other end users by using the appropriate mailing list: 

 - For the Natural History Museum of Denmark: snmspecify@list.ku.dk ([sign up here](https://list.ku.dk/postorius/lists/snmspecify.list.ku.dk/))
 - For the other Danish natural history museums: danspecify@list.ku.dk ([sign up here](https://list.ku.dk/postorius/lists/danspecify.list.ku.dk/))

To be able to use any of our Specify installations, you need to have a user account created for that specific database. Please contact the Specify team for that.

**NOTE:** For specific issues that you experience with using Specify, we prefer that [a ticket is created on our GitHub page](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/User%20Guide/README.md#how-do-i-create-a-support-ticket).

## Where can I access Specify 7? 

The Specify7 installations for each of the Danish Natural History Museums are accessible via these URLs: 
- NHMD (Copenhagen): https://specify-snm.science.ku.dk/specify/ 
- NHMA (Aarhus): https://specify-nhma.science.ku.dk/specify/ 
- Fur & Mors: https://specify-muserum.science.ku.dk/accounts/login/?next=/specify/ 
- Museum Sønderjylland (Gram): https://specify-msjn.science.ku.dk/specify/ 
- Østsjællands Museum (Faxe): https://specify-oesm.science.ku.dk/specify/  
- Naturama (Svendbord): https://specify-naturama.science.ku.dk/specify/
- FIMUS (Esbjerg): https://specify-fimus.science.ku.dk/specify/
- Test database: https://specify-test.science.ku.dk/specify/

## How do I create a support ticket? 

There are 2 ways of creating a support ticket: 
1. Directly on GitHub
2. By sending a mail to this address: danspecify@fire.fundersclub.com 

To be able to create tickets directly on GitHub, you need to first create a GitHub account, which you can do here: https://github.com/join 

When you've got a GitHub account you can create the ticket here: https://github.com/NHMDenmark/DanSpecify/issues

Press the green button: 

![image](https://user-images.githubusercontent.com/10909008/182336191-5f38bc90-8fca-4c42-ab64-75ba1d2671fe.png)

Enter a subject and some text describing your problem in the entry form that follows: 

![image](https://user-images.githubusercontent.com/10909008/182336380-7510f624-0af7-4d87-b726-751adb738a02.png)

Remember to select the project "DanSpecify" in the box to the right:  

![image](https://user-images.githubusercontent.com/10909008/204504867-3773c5a9-efac-44c5-abef-abc5efb5761e.png)

You can also have tickets auto-created by writing a mail to this address: danspecify@fire.fundersclub.com 

When a ticket is created you will then be able to track progress on our project board here: https://github.com/NHMDenmark/DanSpecify/projects/1

## I need to (re)install Specify 6

Remember that you can always access your data online, without having to install anything, using Specify7. See URLs above. 

For features that are not yet, or not fully, supported in Specify 7, please follow the below instructions for installing Specify6: 

**NOTE:** We're currently experiencing problems for users that are not employed at Copenhagen University. In order to be able to use Specify6 you need a VPN connection first and only registered employees or associates are allowed to do so. Please contact our office if you need to use Specify6 and we'll see what we can do.

**NOTE:** When installing software on a Copenhagen University computer, remember to "Request Administrator Access". For more information on how to do so [read this guide](https://kunet.ku.dk/employee-guide/ITvejl/Admin%20by%20request%20-%20KUcomputer%20-%20Windows%2010.pdf). 

### Download Java (64-bits) 

If the correct version of Java hasn't already been installed on your system, please do so with below link: 

https://java.com/en/download/

Remember that you need the 64-bits version of Java for using the 64-bits version of Specify. At Copenhagen University, we're currently experiencing issues with an automated organisation-wide update uninstalling all versions of Java and the reinstalling only the 32-bits version. If one day, Specify6 stops working on your computer, please try to reinstall the correct version of Java. Alternatively, you can install the 32-bits version of Specify6. 

### Download Specify6 

You can download the right version here:  

NHMD: http://update.specifysoftware.org/6803/ 
OTHERS: http://update.specifysoftware.org/6801/

When you've finished installing start Specify6 to log in to the database. 

**NOTE: Do NOT run the Specify Wizard!!!** That is only for creating a new database from scratch. You should run the ordinary Specify6 client.

At the login screen, open the "More information" tab and enter the following info: 

* Username: The username that was assigned to you by the Specify team
* Password: Your password. Contact the team, if you've forgotten it. 
* Database - The name of the database for your institution: 
   * Copenhagen: NHMD
   * Aarhus: NHMA
   * Fur & Mors: Muserum
   * Gram: MSJN
   * Faxe: OESM
   * Esbjerg: FIMUS
   * Svendborg: Naturama
   * Test: NHMDtest
* Server: specify-db.science.domain
* Port: 3306

<img src="https://user-images.githubusercontent.com/10909008/158856731-1553a336-54e0-40f0-81c0-1aa0e80fb3d5.png" width="512">

### Configure Master Key 

Before you can log in, you need to configure the Master Key for security reasons. The Master Key is a long string of characters generated through encryption, which is needed by Specify6 to verify your identity. The easiest way to acquire your masterkey is by logging in to Specify7 using one of the links listed above. When you've logged in, you click on your username shown at the top right inside your window to summon the User Tools menu. Here you can click on "Generate Master Key" and enter your password again. 

<img src="https://user-images.githubusercontent.com/10909008/158857981-a1137e71-04ac-467e-b0da-cbabe8a2b453.png" width="400">

<img src="https://user-images.githubusercontent.com/10909008/158858077-84438d7a-93c8-41f4-be9e-7234113aec3b.png" width="400">

Copy the Master Key that is generated using the key combination 'Ctrl' and 'C'. Back to Specify6, click on the button "Configure Master Key" and paste the copied Master Key into the respective field using the key combination 'Ctrl' and 'V'. 

Now you can log on to Specify6!

**NOTE:** If you aren't able to acquire your Master Key through Specify7, please contact the team. 

## Why use Specify? 

There are many different ways to keep track of collections data digitally. 
Many years ago, the decision was made by the organization of Danish Natural History Museums to opt for Specify. 
Why is using such a specialised software solution the best way forward rather than using spreadsheets, custom FileMaker files or bespoke databases? 
And what are the advantages of using Specify specifically rather than an alternative system on the market? 

The advantage of a specialised collections management system are the following: 

1. Single system to be supported 
2. Central repository of all data 
3. Relational structuring of data 
4. Ready features for working with data 
5. Easy sharing of data 

The advantage of using Specify over alternatives are the following: 

1. Low cost 
2. Widely used
3. Open source  

### Single system 

Managing data digitally actually requires a lot of specialized expertise. 
If different department or sections each uses their own bespoke system they need a specialist to manage their specific solution. 

### Central repository 

Saving data a central place like in the University infrastructure as is our case is by far the safest way. 
Not only is it regularly backed up, it is also kept safe from cyberattacks and ransomware. 

### Relational Data Structure 

As has been known since the seventies, a relational data structure is the most optimal way for storing data. 
1. It minimize repetition 
2. It makes searching easier 
3. It saves space 

### Low Cost

The Specify Software suite is **open source** and in principle free of cost for anyone to install and deploy on their own systems. 
Being part of the consortium has the major advantages of making sure that development continues on Specify and also that we can influence this. 
Not only that, we are also eligible for support from the Specify team in Kansas. 
This is still at a much lower price than most of the commercials solutions out there and that also often are **closed source** meaning a complete dependence on the producer of this solution. 

### Open Source 

Open source software has many advantages not in the least the following: 
1. It's in principle free to install & deploy yourself if you have the expertise & infrastructure 
2. It's in principle possible to troubleshoot any issues yourself 
3. It's in principle possible to develop your own solutions to be integrate into the main branch 
4. In contrast to closed source, it's in principle safeguarded continued development into the future by whoever holds the torch 
