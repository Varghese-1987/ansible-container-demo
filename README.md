# ansible-container-demo


This is a simple poc to demonstrate the capability of ansible-container in a windows machine

Prerequisites :

1) Should have docker desktop installed on your local machine

2) Docker Desktop should be switched to linux container context.

3) Should have the ability to access the container image used here, as its hosted in a 
   private acr

4) Powershell script makes use of the following azure entities for this poc
 
   i) Azure AD Service Principal Credentials that have owner/contributor permissions over       
      your subscription

   ii)  Resource group in Azure which has the AKS cluster provisioned.  
