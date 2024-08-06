FROM node:16-alpine

COPY . /usr/src/app

WORKDIR /usr/src/app


RUN yarn install --non-interactive --frozen-lockfile
RUN yarn global add --dev hardhat npx
RUN yarn global add --dev @nomiclabs/hardhat-etherscan
RUN yarn add --dev @nomicfoundation/hardhat-toolbox @nomicfoundation/hardhat-network-helpers @nomicfoundation/hardhat-chai-matchers @nomicfoundation/hardhat-ethers @nomicfoundation/hardhat-verify chai@4 ethers hardhat-gas-reporter solidity-coverage @typechain/hardhat typechain @typechain/ethers-v6
RUN chmod 755 /usr/src/app/start.sh

EXPOSE 8545

ENTRYPOINT ["/bin/sh", "/usr/src/app/start.sh"]
