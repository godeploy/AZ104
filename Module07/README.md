# go deploy AZ104 Module 07

This repository is a collection of setup scripts for GoDeploy AZ104 labs. They compliment the lab exercises for the GoDeploy platform and are not designed to be used in a stand alone environment.

### Log into the go deploy LMS to access your lab environment

<a href="https://lms.godeploy.it" target="_blank">
    go deploy LMS
</a>

# Deploy

To deploy these resources into your environment run the following powershell line in cloud shell powershell

```
IEX (iwr 'https://raw.githubusercontent.com/godeploy/AZ104/master/Module07/getdeployment.ps1')
```