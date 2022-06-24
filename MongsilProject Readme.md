 ## MONGSIL PROJECT 
 ### [Mongsil](https://github.com/depromeet/mongsil-iOS) 
   - Mongsil Project 다이어그램</br>
      - ![image](https://user-images.githubusercontent.com/77050826/163538697-42d666d6-5054-4c4e-aa08-abed329e1b90.png)</br>
   - 화면 변환 버튼 구현 완료</br>
   - 초기 화면 구현</br>
   ![Simulator Screen Recording - iPhone 12 - 2022-04-14 at 00 47 03](https://user-images.githubusercontent.com/77050826/163227703-cba64956-d2c1-4992-a8c1-3791c9099d67.gif)</br>
   - GeometryReader을 사용해 뷰의 크기를 알아와 button의 layout을 잡아줌</br>
      - ![image](https://user-images.githubusercontent.com/77050826/163431333-030afc16-0d67-46af-abc4-4fd1a100fc3f.png)</br>
   - tabbar top line 그려주는 코드</br>
      - <img width="509" alt="image" src="https://user-images.githubusercontent.com/77050826/163523776-b17bc9b8-4ac7-41e6-bd1e-a049a6b86dac.png"></br>
   - ![Simulator Screen Recording - iPhone 11 - 2022-04-15 at 16 01 12](https://user-images.githubusercontent.com/77050826/163538626-31cfcbb1-86e3-4ea4-893b-e457a4d92182.gif)</br>
   - back button을 눌렀을 때 appview로 다시 돌아가게 구현함</br>
   - 아직 button의 layout이 맞춰지지는 않았음(수정 예정)</br>
   - code 리뷰 받은 후 code 리팩토리중입니다.</br>
   - ![Simulator Screen Recording - iPhone 12 - 2022-04-18 at 20 56 36](https://user-images.githubusercontent.com/77050826/163804963-069d311d-e4a0-4127-8729-6aed64757cbd.gif)</br>
      - navigationbar가 hidden되지 않아 버튼이 위로 올라가는 현상을 해결했습니다.</br>
         - swiftui 오류인지는 모르겠으나 hiiden해도 사라지지 않는 오류가 있었습니다.</br>
         - 해결법: https://github.com/MoSonLee/swiftUI_Combine_TCA/issues/3#issue-1206397848</br>
![Simulator Screen Recording - iPhone 12 - 2022-04-19 at 21 58 56](https://user-images.githubusercontent.com/77050826/164009505-60843432-fc40-464b-9220-02dcbc08dd75.gif)</br>
   - **1차 task 완료**
      - mainTab을 만들어줘서 그 안에 home, record, storage의 view와 core를 pullback 시켜 구현</br>
      - recordView로 이동시킴 https://github.com/MoSonLee/swiftUI_Combine_TCA/issues/2#issue-1200157311</br>
      - back button이 눌렸을 때 이전 화면으로 이동 https://github.com/MoSonLee/swiftUI_Combine_TCA/issues/4#issuecomment-1101384384</br>
      - 미리 모듈로 만들어준 navigationbar을 사용해줌.</br>
  
  - **2차 task 완료**
      - 보관함 설정 아이콘에 SettingView와 Core연결하기</br>
  - **3차 task 완료**
     - storageView를 눌렀을 때 login하라는 alert 띄워주기</br>
        - <img width="267" alt="image" src="https://user-images.githubusercontent.com/77050826/164504009-9c070c7a-9cf5-4e33-b493-94b8352d0365.png"></br>
           - tag와 selection을 사용하여 구현해야함.</br>
           - binding으로 alert을 띄우는 액션을 가져와야함</br>
           - binding까지는 성공 그러나 home에서 home화면을 누르면 modal이 뜬느 오류에 부딪혔다..!</br>
           - customtabView로 바꿔서 진행중입니다</br>
              - customtabView로 뷰구성 완료</br>
                 - <img src = "https://user-images.githubusercontent.com/77050826/165345288-72137605-bcbd-468b-ba08-76a19ef504d5.png" width="300px"> </br>
                 - customTab button action에서 처리해줘야하므로 home과 storage를 pullback 받아오는게 맞을까?</br>
                    - 아니었다! CustomTabView는 말그대로 view</br>
                    - action은 MaintabCore에서 해주는것</br>
   - **4차 task 완료**
      - model 타입 지정</br>
         - 나중에 서버와 통신을 용이하게 할 수 있게 model type을 지정해주었습니다(가상의 값)</br>
         - mock data를 추가해주었습니다</br>
            - 아직 mock data로 디버깅 테스트를 해주지는 못했습니다!</br>
               - 목데이터 디버깅 테스트 완료</br>
            - model type 지정 완료
               - <img width="300" alt="image" src="https://user-images.githubusercontent.com/77050826/166090654-af0c89ae-c614-4517-aac3-0f05a71961c1.png"></br>
   - **5차 task 완료**
      - 기록하기 첫화면 뷰 and core 작성</br>
      - button을 tab했을시 datePicker 띄워주기</br>
         - navigationLink를 사용하는건 어떨까? -> 시도중 -> 개소리였다 </br>
      - 글자 수 제한 함수 만들어주기 -> 해결완료</br>
      - autoLayout 맞춰주기(swiftui로 맞춰는거에 애로사항이 있다 ㅜㅜ)</br>
  - **6차 task 완료**
     - settingView and settingcore 구현하기</br>
     - layout 전면 수정 완료.</br>
     - 만든사람들 view + 로그아웃, 회원탈퇴 logic 구현 남음</br>
     - UserDefaults -> sharedState 이용으로 변경중</br>
        - 완료</br>
     - 코드 전반적 리팩토링중입니다.</br> 
     - 완료</br>
  - **7차 task**
     - 로그인 뷰 refactoring</br>
     - ![Simulator Screen Recording - iPhone 13 Pro Max - 2022-05-31 at 02 36 15](https://user-images.githubusercontent.com/77050826/171040790-36f69ffc-8cfb-4013-a46f-642ef42cc93b.gif)</br>
     - 문제점: 이미지의 원본 비율을 탭뷰안에서 유지해주면서 다른 text들에 영향을 안 가게 하는법이 있을까?</br>
        - 없다. 패딩으로 이미지를 잡아준다 -> 이미지 비율이 꺠짐</br>
        - 이미지 원본 비율 유지 -> 레이아웃이 바뀌는건 당연한 일(디자인 팀에서 그걸 고려해서 이미지를 주지 않았음)</br>
        - 이미지의 원본 비율을 유지하는 것 1순위 -> 따라서 각 다른 디바이스별로 패딩이 달라질 수 있는걸 감안하고 잡아줘야함</br>
     - 카카오, 애플 로그인 버튼를 패딩으로 레이아웃을 잡아줬을 때 생기는 문제</br>
        - 디자인 팀에서 준 이미지로 생각해 보면 큰 기기에서 버튼 이미지가 늘어나며 안에 있는 텍스트가 늘어나 보이는건 당연함</br>
           - 강제적으로 frame으로 크기를 잡아줘 모든 디바이스에서 같은 크기를 유지하게 함</br>
           - 기기별 패딩 값이 다를 수는 있찌만 감안해야 할 부분</br>
           - 로그인 뷰 실행화면</br>
              - ![Simulator Screen Recording - iPhone 13 Pro Max - 2022-06-01 at 16 26 02](https://user-images.githubusercontent.com/77050826/171358842-61d5fd99-33a9-4210-b1a2-e1dfccb7f9d4.gif)</br>
              - 알럿창 위치는 추후에 변경해주기로 했음</br>

   - **8차 task(최종)**
      - mock데이터로 넣어놓은 값들 api 통신으로 바꿔주기 -> 완료</br>

   - 6/23 최종 테스트 -> 6/24 1차 심사</br>
      
### 4/30 현재까지 구현된 상태
- 로그인이 되지 않았을 떄</br>
   - ![Simulator Screen Recording - iPhone 13 - 2022-04-30 at 13 30 37](https://user-images.githubusercontent.com/77050826/166091065-e6fce45d-9784-4af0-82e8-0d7b23d677ce.gif)</br>
- 로그인 완료시</br>
   - ![Simulator Screen Recording - iPhone 13 - 2022-04-30 at 13 31 16](https://user-images.githubusercontent.com/77050826/166091100-cdaceeaf-9c79-47e5-843f-fe693c0dc9d4.gif)</br>
   - 구현한 코드: 기본 tabView에서 화면 전환해주는 코드, back button을 눌렀을 때 화면 뒤로 이동시키는 action, recordButton을 눌렀을 때 navigationLink를 사용해 화면 전환 코드, model type 지정
      - 메인 코더님의 code review, refactoring, 페어 코딩으로 직접 습득하며 도움을 받아 구현하고 있씁니다.!</br>

### 5/21 현재 구현된 상태
   - 회원 로그아웃, 탈퇴, makersView 빼고 모두 구현 완료</br>
      - 로그아웃 구현완료(카카오, 애플)</br>
      - 서버 오류로 탈퇴 확인 불가능한 상태</br>
   - pop to root view에서 문제를 겪고 있음 -> uikit func를 가져와서 사용 + maintab의 selection을 home으로 바꿔줌 -> 해결 완료</br>
   - makers view 구현 완료</br>
      - ![Simulator Screen Recording - iPhone 12 - 2022-05-23 at 22 58 29](https://user-images.githubusercontent.com/77050826/169840481-aaad1050-52a8-4ba2-ae3d-a5b3819891d3.gif)</br>
      - makersView foreach 사용하여 refactor완료</br>
      - 추가적 layout 수정 완료</br>

### 6/4 현재 구현된 상태
   - 기록하기, 검색하기 뷰만 남은 상태</br>

### 6/7 현재 발견된 issue
   - 회원탈퇴가 제대로 실행되지 않음 -> 확인결과 서버는 이상 없음 sharedState의 userID를 지워지는 로직의 순서 문제인듯함</br>
      - 해결 완료

### 6/12 현재 구현된 상태
   - 기록하기, 검색하기와 연관 api는 연결해주지 못한 상태</br>
   - 유저 꿈 작성 api forkey를 String -> Array로 수정 요청한 상태 -> 완료</br>
   - testCode 작성에 문제를 겪고 있음</br>
   - 
### 6/16 현재 구현된 상태
   - 유저 다이어리 리스트를 받아오는 api fix complete</br>
   - ![Simulator Screen Recording - iPhone 13 Pro Max - 2022-06-16 at 02 13 08](https://user-images.githubusercontent.com/77050826/173890283-9793e930-6b31-48ff-9c79-fb5d0f752b2e.gif)</br>
      - 삭제하기 관련 오류가 있는 상태 -> 서버 오류로 판단된다.</br>
         - <img width="672" alt="image" src="https://user-images.githubusercontent.com/77050826/173890486-e1350f2b-dddd-4e97-9055-aad5d8cf74a8.png"></br>
         - <img width="740" alt="image" src="https://user-images.githubusercontent.com/77050826/173890424-3ff78969-d0e3-4195-a722-72e431e7c1b8.png">
      - 삭제하기 관련 오류가 있는 상태 -> 서버 오류로 판단된다.</br>
      - postman에서 확인해봤을 때 유저 카드 id를 삭제하기 넣으면 안된다. -> 서버에 수정 요청 예정</br>

### 6/19 현재 구현된 상태
   - Diary delete, set 로직 연결 완료</br>
   - onAppear 할 때 diarycount를 진행하면 set 되는 속도 보다 느려 0으로 출력되는 문제 발생 -> set 시키면서 같이 count를 해줘서 문제 해결(delete 할 때도 마찬가지)

### 6/21 현재 구현된 상태
   - 최종 task만 남은 상태</br>
   - 6/25 심사 예정</br>

### 6/24 현재 구현된 상태
   - 검색하기 변경된 플로우로 대응 완료(서버에서 변경전이라 테스트는 불가한 상태)</br>
### 7/2 최종 발표!

 ### issues
  - 1. datePicker 뷰 구현 ( core에서 currentDate를 바인딩 시키면서 해야할거 같음)</br>
  - 2. datePicker 버튼을 String으로 맞춰주기( DatePicker 뷰에서 같이 해줘야 할 거 같음!)</br>
  - 3. 글자 수 제한 마지막 글자를 더 치면 삭제하게 구현하는게 괜찮은지? ( 지금 함수 로직은 문제가 없다고 생각하고 removelast쪽을 바꿔줘야할거 같음)</br>
  - 4. 키보드를 띄웠을 때 화면이 같이 올라가는게 맞는 것인지? (아니면 그걸 막는 방법이 있는지?)</br>
     - Solution: 화면을 같이 안 올라가게 설정해줄 수 있음</br>
  - 5. layout을 맞춰줄때 counttextfieled 같은 경우 위에 200 아래 300 이면 알아서 offset으로 비율을 ratio로 내가 계산해서 잡아주는것인지?( 예를들어 좌표로 300, 200) 이런식으로 잡으면 다른 기기에선 다르게 뜰테니?)</br>
     - Solution: 각 기기별로 화면 크기가 다를테니 padding으로 잡아주는 것이 안정적임</br?
   - 6. 키보드를 내려주는 액션(빈공간을 선택시)</br>
      - <img width="300" alt="image" src="https://user-images.githubusercontent.com/77050826/168096147-f71f4622-724b-4c3b-9d4e-e148bb697a0c.png"></br>
      - <img width="292" alt="image" src="https://user-images.githubusercontent.com/77050826/168096224-31b78981-72cd-408b-88e3-ae130590250b.png"></br>
   - 7. keybord에 버튼을 toolbar로 추가 -> 각 키보드 별로하는 것이 가능할까?</br>
      - 가능은 하나 너무 많은 시간이 소요됨 -> 안하기로 결정 </br>
   - 8. 이미지를 잡고 색상을 변경해주고 싶을떄
      - <img width="259" alt="image" src="https://user-images.githubusercontent.com/77050826/168626470-55a4f9f5-8f68-4138-b855-38e99bd770cf.png">
   - 9. Diarycount가 제대로 작동하지 않을 때</br>
      - https://github.com/MoSonLee/swiftUI_Combine_TCA/issues/11#issue-1276452109</br>
   - 10. API를 연결해 Diary를 받아올 때 때 발생한 네트워크 오류</br>
      - https://github.com/MoSonLee/swiftUI_Combine_TCA/issues/10#issue-1272169951
