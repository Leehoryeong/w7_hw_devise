<h1>w7 과제 웹에 디바이스 적용하기</h1>
<h2> 구현의도 </h2>
<p>기존에 만들어져있던 페이지에 디바이스젬을 적용하여 로그인기능을 구현해보자!</p>


<h2>오류내용+해결방법</h2>
<p>첫 번째 오류는 로그인을 해도 book이 user_id를 못읽어와서 도대체 뭐가 문제인가 고민했는데 controller에 저장되게하는 기능을 빼먹어서 발생한 오류였다. @book.user_id = current_user.id로 해결
<br>두 번째 오류는 작성자만 에딧,삭제를 가능하게 해야 하는데 모든사람에게 권한이 잇어서 헤매다가 안보이게 하면된다는 사실을 꺠달았다.. if를 통해서 user_id가 current_user의 id가 같을때만 보이게 구현 
</p>

<h2>간단한소감</h2>
<p>이번과제는 무난하게 해결한것 같아요.. css를 통한 스타일링도 이번주안에 도전 더 해보려고 생각중입니다</p>

<h2>참고문헌</h2>
<p>w7_material/멋사_W7.pdf<br>
https://github.com/plataformatec/devise<br>
</p>