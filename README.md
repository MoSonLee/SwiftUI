# swiftUI_study</br>

### MyAssets app 구현
   ➡️ swiftUI를 사용하여 구현</br>
   ➡️ preview를 보며 코드가 바로바로 구현되는 것을 볼 수 있음</br>
   ➡️ body에 VStack, HStack을 사용하여 구현</br>
   ➡️ JSon 파일을 decoing해 데이터를 받아옴</br>
   ➡️ swift보다 autolayout을 잡는 것이 훨씬 편함.</br>
   ➡️ 선언적 접근 방식을 사용하는 언어다 보니 직접 구현할 것이 훨씬 적고 코드 세분화가 잘됨</br>
   
**📲 실행 화면 </br>**
![Simulator Screen Recording - iPhone 11 - 2022-03-25 at 21 53 03](https://user-images.githubusercontent.com/77050826/160124249-b5a6285d-bdb0-4c5d-afd6-d68e7e5f86de.gif)</br>

### Cafe app 구현
   ➡️ swiftUi를 사용하여 뷰를 구현</br>
   ➡️ combine으로 데이터를 처리해 새로고침 버튼을 눌렀을 때 화면이 인덱스 값이 랜덤하게 바뀌게 구현</br>
   ➡️ Vstack, HStack, list, LaztHStack 등 사용
   ➡️ Observable, Observed, Binding, state 등 combine의 문법을 사용하여 데이터를 처리해줌
   ➡️ navigationView를 사용하여 title을 지정
   ➡️ 설정 탭을 눌렀을 때 설정으로, 거기서 또 navigation button을 누르면 내 정보를 띄워줌
   
**📲 실행 화면 </br>**
   
![Simulator Screen Recording - iPhone 11 - 2022-04-01 at 02 41 26](https://user-images.githubusercontent.com/77050826/161272059-ac7858d8-e1a9-4958-81f3-1742dc928b1f.gif)</br>


### SwiftUI
   - swiftUI는 사용자 interface에 대한 선언적 접근 방식을 사용한다.


![image](https://user-images.githubusercontent.com/77050826/159869093-19d8f943-a381-4485-99e9-d170822a6310.png)</br>

   - 뷰를 작성할때 차이</br>
   - swift
   ![image](https://user-images.githubusercontent.com/77050826/160241777-9aa15f9f-fb3a-4880-950d-a66b0af2ccc4.png)</br>
   - swiftUI
  ![image](https://user-images.githubusercontent.com/77050826/160269425-8a81da9f-d144-4f21-99e6-7246277643a0.png)</br>
   
   - 훨씬 더 간단하게 코드를 구현할 수 있다.
   - 긴딘하게 뷰만 추가해봐도 선언적 접근, 명령적 접근의 차이를 느낄 수 있다.

 ### CaseIterable
  - CaseIterable을 사용하면 enum을 array로 손쉽게 바꿔줄 수 있다.</br>

### swiftui에서 backgroundColor 바꿔주기
<img width="432" alt="image" src="https://user-images.githubusercontent.com/77050826/160885239-fa688565-4f75-4101-b511-96f7195aeab8.png"></br> 
   - 위의 코드처럼 init을 열어서 설정 해줘야 한다.</br>

### Combine

![image](https://user-images.githubusercontent.com/77050826/161272833-caed7e80-6c2a-4993-97da-503000535e4a.png)</br>
   - @State는 String, Int, Bool과 같은 값은 간단한 값을 저장 -> View에 현재 상태를 표시할 때 사용</br>
![image](https://user-images.githubusercontent.com/77050826/161273049-bedf10e8-aa49-458d-b4e6-b60c23bc9f5b.png)</br>
   - @Bindingdms childView에서 ParentView의 값을 표시하고 능동적으로 값이 변화할 때 childView에서 사용함</br>
   
   - combine에는 두가지 기초 개념
      - Publisher: 관심 있는 누구에게나 value를 전달할 수 있는 타입
      - Subscriber: value를 받을 수 있는 타입
   

    
    
