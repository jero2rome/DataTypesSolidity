pragma solidity ^0.5.16; // ^0.4.24;

/*
 * @title Solidity data types
 * @author Jerome Mohanan
 * @notice A simply smart contract to demonstrate simple data types available in Solidity
 *
 */

contract FlowControl {
    function calcDozenDiscountIF(uint256 purchasedQty)
        private
        pure
        returns (bool)
    {
        bool giveDozenPrice = false;

        if (purchasedQty >= 12) giveDozenPrice = true;
        else giveDozenPrice = false;

        return (giveDozenPrice);
    }

    function calcDozenDiscountWHILE(uint256 purchasedQty)
        private
        pure
        returns (bool)
    {
        bool giveDozenPrice = false;
        uint256 numDonuts = 1;

        while (numDonuts < purchasedQty) {
            numDonuts++;
            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        }

        return (giveDozenPrice);
    }

    function calcDozenDiscountDO(uint256 purchasedQty)
        private
        pure
        returns (bool)
    {
        bool giveDozenPrice = false;
        uint256 numDonuts = 1;

        do {
            numDonuts++;
            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        } while (numDonuts < purchasedQty);

        return (giveDozenPrice);
    }
}
