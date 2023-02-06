##Design of Miner Mortgage Loan Agreement

###Description

Reference documents: https://spec.filecoin.io/#section -systems.filecoin_ mining

Determined by the economic model of the storage provider in the Filecoin network, the main income source of the storage provider in the Filecoin network at present is to collect data storage fees and block rewards from the end users through the trading market.

The first is open to all storage providers, as long as they meet the [hardware requirements] required to participate in the network（ https://docs.filecoin.io/storage-provider/hardware-requirements/#general -hardware-requirements) 。 These costs are the key link of Filecoin's economy, because they are determined by each storage provider, and create a data access market, providing competition opportunities for participants of all sizes.

The second is only open to storage providers who become network consensus nodes. To do this, they must achieve at least 10 TiB of committed storage capacity. This allows them to verify the next block in the Filecoin network to obtain rewards, which is very similar to miner's obtaining the Coinbase transaction (a special transaction type) from the workload proof network to obtain rewards. The opportunity for them to get this reward is different from the total [storage power] available in the network（ https://filecoin.io/blog/filecoin-guide-to-storage-mining/#storage -Power) is proportional.

! img

Collateral is another economic concept that needs to be understood. This is actually the number of FILs that storage providers need to lock to ensure that they will act in good faith and that their motives are compatible with other members of the economy. If they fail to fulfill their responsibilities to the network, their pledge will be * slushed *, that is, they will lose part of their FIL

When calculating the cost of revenue and expenditure, the pledge is considered separately, because the invested FIL will be returned after the successful storage and transaction agreement. However, it is also an important consideration. After all, it is also part of the initial investment.

There are three types of collateral:

-* * Pledge initially invested: * * This is the amount of FIL required to participate in the Filecoin economy. It is equivalent to the sector fault fees of the 7-day value plus a sector error detection fee. View [Filecoin specification]（ https://spec.filecoin.io/#section -systems.filecoin_ Mining) to learn more.

-* * Block reward as collateral: * * The number of FILs that the storage provider can obtain after submitting a block in the consensus process. 75% of this amount can be unlocked within 6 months. If a sector is terminated before the expiration date, it will be punished by * lashing * (confiscation of pledge).

-* * Pledge of storage provider transaction agreement: * * If a transaction agreement is terminated, a certain amount of FIL will be * slashed * (confiscated). Higher collateral may mean higher reliability for potential customers.

In terms of cost, the storage provider should consider many factors: purchase and maintain competitive hardware equipment, optimize sales and marketing activities, cost of electricity, and other costs and interest generated by borrowing FIL when necessary. Some of these costs, such as hardware equipment and electricity costs, can be adjusted through negotiation. We want to use FEVM and [Benefit address]（ https://github.com/filecoin-project/FIPs/blob/master/FIPS/fip-0029.md ）The mechanism designs a contract to help miner withdraw funds in advance so as to better maintain his storage business. Miner will return the income for a period of time to the investors according to the contract. This is a decentralized P2P lending agreement, which is initiated by miner. People who want to invest in miner can invest in miner according to the contract. The transfer of funds and the distribution among multiple investors can only be reasonably distributed by FEFM according to the proportion of investment.

The contract deployment is initiated by the miner's owner address, which is similar to a loan contract. The contract indicates a series of information required by the borrower, and uses Miner's earnings for a period of time in the future as collateral for this lending. In the future, miners' earnings will only be cashed into the contract. It is distributed to each contributor by contract.

[Feasibility reference on mortgage lending]（ https://github.com/filecoin-project/FIPs/blob/master/FIPS/fip-0029.md )

Role:

+Debit: As the borrower, the miner uses the future miner's earnings as collateral. Return the income to the lender in the future

+Creditor: The participants of the filecoin can participate in the contract as the lender. The lender will lend the idle FIL in his hand to the borrower, and obtain the income of the miner for a period of time in the future as a return. The credit can be multiple.

+Contract: The borrower and the borrower reach a loan contract through the FVM smart contract. The contract ensures the distribution of the interests of the lender and the borrowing funds of the borrower.