# Project Title: Create and Mint Token

A SmartContract 'RuffledZest.sol' deployed on Hardhat local network which implements the ERC20 by openzeppelin, to create a custom Token (Name: RuffledZest Symbol: RFZ). With Functionalities Including:
* Mint Token
* Burn Token
* Transfer Token

## Description

* This project implements all the functionalities of ERC20 token (the contract implements ERC20) which includes: mint, burn, approve, transfer, transferFrom, transferOwnership, allowance, balanceOf, decimals, name, owner, symbol, totalSupply.


    * The Function 'mint' takes 2 parameters (address to, uint val) and is marked OwnerOnly, so only owner can mint val to any account. 
    * The Function 'burn' takes 1 parameter (uint val) and can be called by any user. It is used to burn the token val on the network.
    * The Function 'transferFrom' overrides the orignal 'transferFrom' function from ERC20. It takes 3 parameters (address from, address to, uint value). It can be called by any user to transfer token (RFZ value) to any legit address.
    Note: user will be able to spend Token only if it's approved (given allowance to the spender).

## Getting Started

### Installing

* User can clone this repository to there local system or can dowload zip file.
* User is required to install Node.js prior before executing the program.


### Executing program

1. after cloning the Repository, open first terminal and enter the commands: 

```shell
npm i
```
```shell
npm install @openzeppelin/contracts
```
2. Now open second terminal and enter the following commands to compile the contract if not compiled yet:

```shell
npx hardhat compile
```
3. Now Start the hardhat node:

```shell
npx hardhat node
```
4. Finally in the third terminal, deploy the contract on hardhat localhost, using the following command:

```shell
npx hardhat run --network localhost scripts/deploy.js
```
5. This will deploy the contract successfully.

## Help

To Understand the Hardhat commands on can use this command in terminal:

```
npx hardhat help
```

## Authors

* Name: Vibhansh Alok
* MetacrafterID: RuffledZest (vibhanshalok@gmail.com)
* Loom Video Link: https://www.loom.com/share/335262a7207d4ac38ac1135a041aa125

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.