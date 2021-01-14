# Haskell LP project: Decision Trees

## Table of contents

[Description](#description)
[Installation](i#nstallation)
[Usage](#usage)
[Credits](#credits)
[License](#license)


## Description
<a name="description"></a>
The objective of this project was to create a decisional tree with a handled data sample made by Jeff Schlimmer, 1981 [Mushroom Data Set](https://archive.ics.uci.edu/ml/datasets/Mushroom).
This decisional tree have to be used to answer the edibility using a mushroom description introduced by the user via a dialog system. 

## Installation
<a name="installation"></a>
Firstly, we need to install the Glasgow Haskell Compiler (GHC) in order to execute the haskell program dts.hs. Depending on the OS we have to execute the next commands:
1. Ubuntu: 
    1.1 Execute the command **#sudo apt install ghc**
2. Windows:
    2.1 Install [Chocolatey Software | Chocolatey - The package manager for Windows](https://chocolatey.org/).
    2.2 Execute the command **#chocolatey install ghc**
3. Mac:
    3.1 Install [El gestor de paquets per macOS que faltava — Homebrew](https://brew.sh/index_ca)
    3.2 Execute the command **#brew install ghc**   
        
Once the GHC is installed:
1. We can simply execute the command: **#ghc dts.hs** in order to make an executable.

2. Or if we want, we can execute ghci where the project directory is and load the .hs with the command 
**#load dts.hs**.

## Usage
<a name="usage"></a>

If we have just made the executable with the ghc dts.hs command, we can just execute it and it will run the program.

Otherwise, if we have executed the ghci and loaded the dts.hs. We have to execute the program introducing the name of the function "main"

On the program execution, we will wait until the decisional tree is printed.
We will know when the decisional tree is totally printed when the program will ask us about mushroom attributes.
We have to answer the questions with the answer suggestions printed by the program:
- **It's important to write our answer with the first letter in capital letter, since this program is key sensitive**. 
- **Any other answer that doesn't match with the answer suggestions of the program, will be considered as the "Other" option** since any other attribute value will not be decisive on the prediction.

If our answer matches one of the answer suggestions of the program, means that we would have an answer and we could predict if the mushroom is edible or poisonous. If so, an answer will be printed:
If we have answered all the questions without still not knowing if the mushroom is Edible/Poisonous, the program will show a don't know message.

The execution ends when the program give us a prediction. After that, we can execute the program again executing the main function.

## Credits:
<a name="credits"></a>
Laia Igelmo Amorós

## License
<a name="license"></a>
MIT License
Copyright (c) [2020] [Laia Igelmo Amorós]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.