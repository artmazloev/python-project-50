[![Actions Status](https://github.com/artmazloev/python-project-50/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/artmazloev/python-project-50/actions)

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=artmazloev_python-project-50&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=artmazloev_python-project-50)

[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=artmazloev_python-project-50&metric=bugs)](https://sonarcloud.io/summary/new_code?id=artmazloev_python-project-50)

[![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=artmazloev_python-project-50&metric=code_smells)](https://sonarcloud.io/summary/new_code?id=artmazloev_python-project-50)

[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=artmazloev_python-project-50&metric=coverage)](https://sonarcloud.io/summary/new_code?id=artmazloev_python-project-50)

[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=artmazloev_python-project-50&metric=sqale_rating)](https://sonarcloud.io/summary/new_code?id=artmazloev_python-project-50)


# gendiff

gendiff - is a program that looks for the differences between the two.json or yaml formats and displays the result on the screen

## Installation

- Сloning the github repository
```
$ git clone git@github.com:artmazloev/python-project-50.git
```
- Install make on Ubuntu
```
$ sudo apt install make
```
- UV Installation
```
$ curl -LsSf https://astral.sh/uv/install.sh | sh
```

- Launching the program
```
$ make install
$ make build 
$ make package-install
```
Output formats:
- stylish - shows clearly the differences in the two files;
- plain - shows the changes flatly.
- json - shows changes in the json format

## Example of work

[![asciicast](https://asciinema.org/a/qGs5aY534yg12fwC0wvluMFJW.svg)](https://asciinema.org/a/qGs5aY534yg12fwC0wvluMFJW)