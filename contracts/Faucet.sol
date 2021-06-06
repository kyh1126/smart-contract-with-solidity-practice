// SPDX-License-Identifier: CC-BY-SA-4.0

// Version of Solidity compiler this program was written for
pragma solidity >=0.4.22 <0.9.0;

// 우리의 첫 번째 컨트랙트는 Faucet!
contract Faucet {
  // 입금 금액 수락
  function () external payable {}
//  receive() external payable {}

  // 요청하는 사람에게 이더 주기
  function withdraw(uint withdraw_amount) public {
    // 출금 액수 제한
    require(withdraw_amount <= 100000000000000000);

    // 요청한 주소로 금액 보내기
    msg.sender.transfer(withdraw_amount);
  }
}
