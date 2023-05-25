# fluttter_study

<h3>플러터 학습을 위한 repository ✍ </h3>

1. 캐릭터 페이지
 - 플러터 앱페이지의 기본 코드와 위젯 학습
 - 전반적인 UI 구성, 이미지 추가하는 법 학습
 
   <img src="https://github.com/yegri/fluttter_study/assets/113401733/602d6b4c-8c99-48c3-b24a-0f0b2fae6171)" height="500">
<br>
<br>

2. drawer 메뉴
 + app bar 메뉴 
  - leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
  - actions: 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
  - onPressed: ( ) { } 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳
  
 + drawer 위젯을 추가하면 자동으로 햄버거 메뉴 생김
  - UserAccountsDrawerHeader
  - ListTile
  
    <img src="https://github.com/yegri/fluttter_study/assets/113401733/cae1203d-776e-4632-9818-a61ee1f73fe1" height="500">

3. SnackBar : 메시지를 통해 작업에 대한 간단한 피드백을 제공하는 UI
 - ScaffoldMessenger.of(context).showSnackBar(SnackBar(contetn:Text('hello')
  : ScafooldMessenger.of 함수를 사용해서 현재 위치(context)를 참조 -> showSnackBar 함수를 사용하여 SnackBar 그림
 - Something.of(context) : 현재 주어진 context에서 위로 올라가면서 가장 가까운 Something을 찾아서 변환하는 함수 (Something에는 Scaffold가 들어갈 수도 있고 Theme가 들어갈 수도 있고 등등 다양하게 들어갈 수 있음)
 
   <img src="https://github.com/yegri/fluttter_study/assets/113401733/6a45637c-377a-450e-b197-a087c2ca02c4" height="500" >

4. Toast Message
 - fluttertoast 라이브러리 사용
 - Fluttertoast.showToast()
  
   <img src="https://github.com/yegri/fluttter_study/assets/113401733/51428107-37db-4690-8b1b-d36a96c845eb" height="500">
