# 📁ERP based on Spring Framework

## 📌소개
Spring 기반의 jsp로 ERP를 구현한 프로젝트입니다.

## 📌목표
- Spring, JSP, MVC 패턴 등 기술 역량 증진
- ERP 시스템 구조와 도메인 이해 증진

## 📌기간
- 2025-01-08 ~ 2025-01-27

## 📌인원 및 역할
- 정진우 - 화면 작업, DB 구축 및 데이터 처리

## 📌개발 환경
- Framework: Spring 5.2.25-RELEASE
- DB: MySQL 8.0.31
- Mapper: Mybatis 3.0.4
- Language: Java 11
- WAS: Tomcat v9.0
- IDE: Eclipse 2024-12-R

## 📌ERD
![alt text](assets/erd.png)


## 📌구조
- MVC 패턴

![alt text](assets/mvc.png)

[원본이미지](https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1#R%3Cmxfile%3E%3Cdiagram%20name%3D%22%ED%8E%98%EC%9D%B4%EC%A7%80-1%22%20id%3D%22EYmIl-xgydG-Mr9KmU9k%22%3E7Vtdk6I4FP01Pq4FCeHjsUd7d2prprq33JqZfUSImmo0Voxf8%2Bs3SFTIxaJbQbRLp2qK3EAg55ybe2%2BgO7g33fwlwvnkO49p0kFWvOngfgehwAvU%2F6lhmxkIIplhLFicmeyjYcB%2BU220tHXJYroonCg5TySbF40Rn81oJAu2UAi%2BLp424knxrvNwTIFhEIUJtP5ksZxkVoSxe%2Bz4Stl4sr%2B1S5ysZxruz9ZTWUzCmK9zJvzcwT3BucyOppseTVLw9sBk1%2F15ovfwZILO5Hsu2DwvVq%2F%2FOPHPxPv6bY7i35ve9A89yipMlnrGPxhd6weW2z0Mgi9nMU0Hsjv4y3rCJB3MwyjtXSvelW0ip4nuDhM2nqnjSD0YFcqwokIyhemT7hhyKflUdYz4TGrOsZW2WZL0eMLF7q44Dqk%2FipR9IQV%2Fo7keN%2FLpcKR69OOrG9DNSVzsA9pKppRPqRRbdYq%2BwNX8aIX6urk%2B0o2xtk1yTGOijaGW2Pgw8pEEdaB5%2BAAnCHCi3eoSUs7mgFA%2Fdso48NEQu249HJgkOOSdLCCnKRYwYKGnkBI8SZSmb8M%2FRiPqRqX%2BEXvB0LLq4capdhDXu6qDOICavwevgBO13s7TwxmXtJqUYRi9jXc0vixlwmZU2%2BNQvL2oq5hMp291LVLkBdWEMgqKKB8iYA5mvwRl22oKZQIdYDC4c5Rtx0DZbRtlt0TLnwxku3Upex9Zy9V4Krt8B84NQOf4hj4RhM5GJdj5TUG35y6HHURsFj%2BluXYa05JwsWBREahjdExhUlCI7a984798o59C4ZJDM0XCPjRfqWBqYmnYzC7ZMPkrd7wbqkt0azfWvms30r5hjpPNicagGjCYU%2FPmSxHR6ugkQzGmsmp9hUrIMU1KiN7bBE1CyVbFxy1jX9%2FhlTM1kZyPkqLQzGCdTVNfla8qzIECYyDTiTMcwEA7MR6mfYE%2BYQVzqT5rktRB53Ze53ZB51ZB5tYplbegTrdNdSLvRJj%2BqDoxOpFVXUudsJYbULFiiqJbCjsuubmwA8uv%2FtPLTYHmm9pqHzSYTPa%2FAMz2yWS0VblhTAV%2BR0aZLZDfhlUp5iKD2C7LLM3ilaT%2F9Hk5e%2FYr3fTZ%2FWrKUW3XN%2BIW6hLAX1CappKm%2BIN56oWx7BTmVdhWh5q2QgM2lyrH61rovOhArOqxmg4QwYPyKsqJWRQ5fhe5wfHnn0e%2Fa2YZalyPXJV%2BVHt19fnoBzR5dheR8ygHUvKsruddl%2FLaC5bPRzkxt%2BmCM%2FN%2Fx4gWjlnmNk023Kr%2BHs7nN7brFPhGLtR6Jovg5vPDSQxtB2b9UVNYtC27%2FbgIK5kH%2F5U8XRAYgZhaCIz%2Bg%2FNqzs3XhHU5vV2SZF%2Fb6R%2B1ULUAAE8XOD1U0%2FW93kEP0qtI98CeRz1O75tp9vV93oH7vA%2F6q2i6wOWBlFrweBjnd9%2B3Pc3iim8PrVaqI%2Bx43eI7TlLydZpNyGkB1P9tzmPVrHQbx0iPQe1%2F9ktEczeiYYchJZsIFR%2BE3oqnOEHrngJ3Evr%2FwheJatKy87GvNKcsjpNTGzZFKmrA1jXfVZTs0bglzoQbA7bkZeM9Auu55MaAhW8B7xLYwExbWgcWJh4%2FPgOuXtu4wrr9HnEFC0HbuLrwTdFdLgQgdDUHrGoe%2F6Aqy7%2BOf5aGn%2F8H%3C%2Fdiagram%3E%3C%2Fmxfile%3E)

## 📌주요 기능
### 로그인
사용자 아이디와 비밀번호를 검증하고 접근을 허용합니다.

---
### 기준 관리
ERP 시스템의 도메인에 대한 기준을 정하고 관리합니다.

- 부서 기준 관리
  - 부서에 대한 기준을 정하고, 이를 관리합니다.
- 근태 기준 관리
  - 근태에 대한 기준을 정하고, 이를 관리합니다.
- 급여 기준 관리
  - 급여에 대한 기준을 정하고, 이를 관리합니다.

---
### 인사 관리
인사 시스템에 필요한 부서와 사원을 관리합니다.

- 부서 관리
  - 기준 관리에서 등록한 부서 기준에서 부서를 등록 및 관리합니다.
- 부서원 관리
  - 부서 관리에서 등록한 부서에 사원을 배치하고 관리합니다.
- 사원 관리
  - 사원 추가, 수정, 삭제 등을 통하여 사원 정보를 관리합니다.

## 📌시연 및 설명
### 로그인
<details>
<summary>펼쳐보기</summary>

![alt text](assets/login-1.png)
기본 화면입니다.

![alt text](assets/login-2.png)
아이디와 비밀번호를 입력한 상태입니다.

![alt text](assets/main-1.png)
로그인 성공 시 메인 화면으로 이동합니다.

  </details>

---
### 기준 관리
<details>
<summary>펼쳐보기</summary>

#### - 부서 기준 관리
![alt text](assets/cri-dep-1.png)
부서 기준 관리 기본 화면입니다.  
등록할 부서 기준을 입력 후 기준 등록 버튼을 클릭하여 추가할 수 있습니다.

![alt text](assets/cri-dep-2.png)
부서 기준이 추가된 결과입니다.

![alt text](assets/cri-dep-3.png)
등록 현황에서 부서 기준을 클릭하면 부서 정보를 수정할 수 있습니다.  
상태와 명칭을 수정하고 수정 버튼을 누르면 수정 완료됩니다.  
삭제 버튼을 누르면 해당 부서 기준을 삭제합니다.

![alt text](assets/cri-dep-4.png)
방금 추가한 부서 기준을 삭제해보겠습니다.  
부서 기준을 클릭합니다.

![alt text](assets/cri-dep-5.png)
삭제 버튼을 누릅니다.

![alt text](assets/cri-dep-6.png)
등록 현황에서 부서 기준이 삭제되었습니다.

#### -  근태 기준 관리
![alt text](assets/cri-att-1.png)
근태 기준 관리 기본 화면입니다.  
등록할 근태 기준을 입력 후 기준 등록 버튼을 클릭하여 추가할 수 있습니다.

![alt text](assets/cri-att-2.png)
근태 기준이 추가된 결과입니다.

![alt text](assets/cri-att-3.png)
등록 현황에서 근태 기준을 클릭하면 근태 정보를 수정할 수 있습니다.  
상태와 명칭을 수정하고 수정 버튼을 누르면 수정 완료됩니다.  
삭제 버튼을 누르면 해당 근태 기준을 삭제합니다.

![alt text](assets/cri-att-4.png)
방금 추가한 근태 기준을 삭제해보겠습니다.  
근태 기준을 클릭합니다.

![alt text](assets/cri-att-5.png)
삭제 버튼을 누릅니다.

![alt text](assets/cri-att-6.png)
등록 현황에서 근태 기준이 삭제되었습니다.

#### -  급여 기준 관리
![alt text](assets/cri-pay-1.png)
급여 기준 관리 기본 화면입니다.  
등록할 급여 기준을 입력 후 기준 등록 버튼을 클릭하여 추가할 수 있습니다.

![alt text](assets/cri-pay-2.png)
급여 기준이 추가된 결과입니다.

![alt text](assets/cri-pay-3.png)
등록 현황에서 급여 기준을 클릭하면 급여 정보를 수정할 수 있습니다.  
상태와 명칭을 수정하고 수정 버튼을 누르면 수정 완료됩니다.  
삭제 버튼을 누르면 해당 급여 기준을 삭제합니다.

![alt text](assets/cri-pay-4.png)
방금 추가한 급여 기준을 삭제해보겠습니다.  
급여 기준을 클릭합니다.

![alt text](assets/cri-pay-5.png)
삭제 버튼을 누릅니다.

![alt text](assets/cri-pay-6.png)
등록 현황에서 급여 기준이 삭제되었습니다.

</details>

---
### 인사 관리
<details>
<summary>펼쳐보기</summary>

#### -  부서 관리
![alt text](assets/hr-dep-1.png)
부서 관리 기본 화면입니다.  

![alt text](assets/hr-dep-2.png)
부서 기준 현황에서 부서 기준을 클릭하면 알림창이 띄워집니다.  
추가 여부를 묻고, 추가를 원하면 '예' 버튼을, 원치 않으면 '아니오' 버튼을 눌러 진행합니다.

![alt text](assets/hr-dep-3.png)
부서를 추가하여 부서 등록 현황에 등록된 결과입니다.

![alt text](assets/hr-dep-4.png)
부서 등록 현황에서 부서를 클릭하면 삭제 여부를 묻는 알림창을 띄웁니다.

![alt text](assets/hr-dep-5.png)
삭제를 진행하여 부서 등록 현황에서 제거된 결과입니다.

#### -  부서원 관리
![alt text](assets/hr-dep-mem-1.png)
부서원 관리 기본 화면입니다.

![alt text](assets/hr-dep-mem-2.png)
부서를 선택한 결과입니다.  
선택 후 아래에서 현재 선택한 부서를 알 수 있습니다.

![alt text](assets/hr-dep-mem-3.png)
첫번째 사원을 선택합니다.

![alt text](assets/hr-dep-mem-4.png)
사원을 선택한 결과입니다.  
선택 후 아래에서 현재 선택한 사원을 알 수 있습니다.  
또한, 부서 현황 아래에 '추가하기' 버튼이 활성화됩니다.

![alt text](assets/hr-dep-mem-5.png)
방금 선택한 사원을 선택한 부서로 배치한 결과입니다.

![alt text](assets/hr-dep-mem-6.png)
부서 현황의 사원을 클릭하면 '제거하기' 버튼이 활성화됩니다.

![alt text](assets/hr-dep-mem-7.png)
부서 현황에서 사원을 제거한 결과입니다.

#### -  사원 관리
![alt text](assets/hr-emp-1.png)
사원 관리 기본 화면입니다.

![alt text](assets/hr-emp-2.png)
사원 현황에서 '사원 추가하기' 버튼을 누르면 입력 창을 띄웁니다.  
추가할 사원 정보를 입력합니다.

![alt text](assets/hr-emp-3.png)
스크롤을 내리면 경력사항을 입력, 추가할 수 있습니다.

![alt text](assets/hr-emp-4.png)
사원 현황에 사원이 추가된 결과입니다.  
사원을 클릭하면 우측에 사원 정보가 나옵니다.

![alt text](assets/hr-emp-5.png)
사원 정보에서 '수정' 버튼을 클릭하면 정보를 수정하는 창이 띄워집니다.  
수정을 완료하려면 '완료' 버튼을 눌러 진행합니다.

![alt text](assets/hr-emp-6.png)
사원 정보가 수정된 결과입니다.

</details>

## 📌특이사항

- 개인 사정으로 구현 범위 축소와 미흡한 기능이 있는 점 양해바랍니다.🙏
- ERP 시스템의 중요 자원 중 하나인 인사(HR)에 초점을 두었습니다.
- 미구현
  <details>
  <summary>펼쳐보기</summary>

  ```
  - controller
  AttendanceAnnController.java
  AttendanceAppController.java
  AttendanceDetController.java
  AttendanceRecController.java
  AttendanceSitController.java
  PayrollCalRetController.java
  PayrollPayController.java
  PayrollSpeController.java
  MainController.java
  - js
  attendance_annualleave_situation.js
  attendance_apply.js
  attendance_details.js
  attendance_receive.js
  attendance_situation.js
  payroll_calculated_retrieval.js
  payroll_payment.js
  payroll_specification.js
  - jsp
  attendance_annualleave_situation.jsp
  attendance_apply.jsp
  attendance_details.jsp
  attendance_receive.jsp
  attendance_situation.jsp
  payroll_calculated_retrieval.jsp
  payroll_payment.jsp
  payroll_specification.jsp
  main.jsp
  ```
  </details>
