#!/usr/bin/env bash

folderName="Medium Project"

if [ "$#" -eq 1 ]
then
    folderName=$1
elif [ "$#" -gt 1 ]
then
    echo -e "Only one argument on this script."
    exit 1
fi

installFolder=~/Library/Developer/Xcode/Templates/Project\ Templates/"$folderName"

echo "Templates will be installed to $installFolder"

if [ -d "$installFolder" ]
then
    rm -r "$installFolder"
fi

mkdir -p "$installFolder"

cp -r *.xctemplate "$installFolder"

mkdir -p "$installFolder"/"iOS Application.xctemplate/AppDelegate/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Models/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Macro/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Macro/AppMacro/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Macro/NotificationMacro/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Macro/UtilsMacro/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Macro/VendorMacro/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/General/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/General/Views/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/General/Classes/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/General/Categories/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Vendors/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Helpers/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Sections/"
mkdir -p "$installFolder"/"iOS Application.xctemplate/Resources/"