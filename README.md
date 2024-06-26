# Project Title: Create and Mint Token

A SmartContract 'RuffledZest.sol' deployed on Hardhat local network which implements the ERC20 by openzeppelin, to create a custom Token (Name: RuffledZest Symbol: RFZ). With Functionalities Including:
* Mint Token
* Burn Token
* Transfer Token

## Description

* This project implements all the functionalities of ERC20 token (the contract implements ERC20) which includes: mint, burn, approve, transfer, transferFrom, transferOwnership, allowance, balanceOf, decimals, name, owner, symbol, totalSupply.


    * The Function 'mint' takes 2 parameters (address to, uint val) and is marked OwnerOnly, so only owner can mint val to any account.
    ```shell
    function mint(address to, uint256 val) public onlyOwner {
        _mint(to, val);
        
    }
    ``` 
    * The Function 'burn' takes 1 parameter (uint val) and can be called by any user. It is used to burn the token val on the network.
    ```shell
    function burn(uint256 val) public {
        _burn(_msgSender(), val);
    }
    ```
    * The Function 'transferFrom' overrides the orignal 'transferFrom' function from ERC20. It takes 3 parameters (address from, address to, uint value). It can be called by any user to transfer token (RFZ value) to any legit address.
    
    ```shell
    function transferFrom(address from, address to, uint256 value) public override returns (bool) {
        require(verify(to), "Invalid address");
        return super.transferFrom(from, to, value);
    }
    ```
    Note: User will be able to spend Token only if it's approved (given allowance to the spender).

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














# Project Title: ETH_Project - ETH PROOF: Begginer EVM course
Introducing a fundamental Solidity smart contract with all the required functionality, such as token minting and burning, that simulates a token.

## Description

* The MyToken.sol file contains three state variables
    * name : stores the name of the token.
    * symbol: stores the abbreviation of the token
    * totalSupply: stores the initial amount of token in the chain (by default set to 0)

    ```shell
    string public name = "TokenName";
    string public symbol = "TKN";
    uint256 public totalSupply = 0;
    ```
* The code also has mapping of address to balances

    ```shell
    mapping(address=> uint) public balance;
    ```
* We have two functions: 
    * mint() function, it takes two parameters (address and the value). Once mint is called the the totalSupply will be increased by that value. Also the balance of that address will also be incremented by value.

    ```shell
    function mint(address _account, uint256 _value) public {
        totalSupply += _value;
        balance[_account]+= _value;
    }
    ```

    * burn() function. It also takes two parameters (address and value). it is exact opposite of mint() with a condition. The condition being whether the balance of that particular address is greater than the value to be burnt. if condition satisfies the totalSupply will be decreased by that value. Also the balance of that address will also be decremented by value.

    ```shell
    function burn(address _account, uint256 _value) public {
        if(balance[_account]>= _value){
            totalSupply -= _value;
            balance[_account] -= _value;
        }
    }
    ```

## Getting Started and Code
You can use Remix, an online Solidity IDE, to run this application. Start using the Remix website by going to https://remix.ethereum.org/.

1. On the Remix website, click the "+" sign in the left sidebar to begin a new file. Save the file with the extension.sol, for instance, Token.sol. After copying the code from the file MyToken.sol, paste it in the remix file.

2. Once pasted, compile the code. Then deploy it. 
3. On successful deployment user can interact with the code and use the following commands: mint(), burn(), balance(), name, symbol, totalSupply.

## Author 
