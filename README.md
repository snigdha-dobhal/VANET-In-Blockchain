# VANET-In-Blockchain
A blockchain DApp based implementation of Vehicular Ad-hoc Netwoks to provide a decentralized approach to the prevalent VANET solution, making things faster, reliable and less prone to security breaches and cyber attacks.


# Steps to run the application

1. Install **ethereum testrpc** (ganache-cli) in your machine. For linux terminal, use the command: _testrpc_ to start the ethereum testrpc server. 
   By default testrpc gives you 10 accounts, indexed from 0 to 9. These are to be used as account addresses for the Dapp users.
   
   
2. Open Remix IDE in a web browser: https://remix.ethereum.org/
   This IDE will be used for compiling the solidity code and deploying and running the transactions.
   
   Add the solidity files from the code base to the Remix IDE under the contracts folder. 
   On the left most vertical strip on the IDE, you will see certain icons representing the IDE plugins. Select the Solidity Compiler.
   If you do not see an icon for the solidity compiler, you can enable this tool from the IDE plugins manager.
   
   The first line of the solidty code mentions the compiler version _^0.4.18_
   In the Solidity compiler, select the exactly same version from the compiler drop-down menu and compile the codes.
   
   
3. Once the solidity smart contract compiles successfully, select the _Deploy and Run Transactions_ plugin from the left most vertical strip of the Remix IDE.

   From the Environments drop-down, select Web3Provider and enter the apt Web3 Provider Endpoint. This is the host:port socket on which your testrpc is running.      By default, this will be- _http://127.0.0.1:8545_ 
   
   Remix will pop up an error/warning message if your testrpc is not running. So make sure that testrpc is up and running before selecting the Web3Provider          option.
   
   Once you have selected the Web3 Provider option, you will notice that in the **accounts** drop-down, you get a list of the same 10 accounts which the testrpc      server provided you. Select any one of these accounts from the drop-down.
   
   
   
4. Save the HTML and CSS files in your local. Make sure they are saved in the same folder.
   Open the HTML files in a code editor and locate the following statement-
   
            web3.eth.defaultAccount = web3.eth.accounts[0];
   You need to update the index according to the account you selected in Remix IDE. 
   For eg, if you selected the fourth account, index will be 3 (zero-based indexing) and the statement would become- 
   
            web3.eth.defaultAccount = web3.eth.accounts[3];
           
   Update the statement in both HTML files, save them and open the HTML files in a web browser. 
  
  
5. Go back to the Remix IDE and hit **Deploy**. Your DApp is now ready to function!
   You can interact with it using the web UI as well as the Remix IDE Deployed contracts section.
   You can deploy multiple contracts and can test it with multiple accounts.
   
   
