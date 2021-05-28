# Software deploy scripts

A collection of different scripts that aid in deploying software packages. The goal is to be able to use the normal installers that are provided without having to repackage then. These scripts are more geared towards SCCM but can be used with other deployment tools as well.

## Basic folder layout

```
Description
│   bootstrap.ps1
│   install.ps1    
│   uninstall.ps1    
│   other required script(s)    
│
└───Software
    │   Software installer(s)
```

**In the main folder you should only have to use the bootstrap.ps1 file**. This contains all the variables that are used by other scripts.

An example can be found below


## Provided scripts

| Folder                                   	| Used for                                                                                                                                                                                                                                  	|
|------------------------------------------	|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| EXE with uninstall via installer         	| When you have an .exe installer and the same .exe is also used to uninstall the package                                                                                                                                                   	|
| EXE with uninstaller on host             	| Will look for the uninstaller executable with the given name in the chosen folder                                                                                                                                                         	|
| EXE with uninstaller via registry lookup 	| This will look in the registry for the uninstall string and use that.                                                                                                                                                                     	|
| MSI multi installer                      	| Used to install multiple msi packages in order and also uninstall them in a specific order. This script will also look for program(s) that need to be stopped in order to start the installation and kill those processes automatically.  	|

## How to use

Place all your software packages in the `Software` folder. Modify the bootstrap.ps1 file with all the values that you need.

Upload the folder to your package management software. The install and uninstall string will always be the same command. You dont need to provide any more parameters. Everything is taken care of by the scripts and variables in the bootstrap file.

```powershell
# install:   
powershell.exe -ExecutionPolicy ByPass -File install.ps1
# uninstall: 
powershell.exe -ExecutionPolicy ByPass -File uninstall.ps1
```

In each folder there are comments provided in the bootstrap file and example values are filled in. The binaries are not provided.