const main = document.querySelector("#main");
const qna = document.querySelector("#qna");
const result = document.querySelector("#result");
const endPoint = 5;
const select = [0, 0, 0, 0, 0];

//메인페이지에서 질문페이지로 넘어가기
function begin() {
  main.style.WebkitAnimation = "fadeOut 1s";
  main.style.animation = "fadeOut 1s";
  setTimeout(() => {
    qna.style.WebkitAnimation = "fadeIn 1s";
    qna.style.animation = "fadeIn 1s";
    setTimeout(() => {
      main.style.display = "none";
      qna.style.display = "block";
    }, 450)
    let qIdx = 0;
    goNext(qIdx);
  }, 450);

}

function goNext(qIdx) {
  if (qIdx === endPoint) {
    goResult();
    return;
  }

  var q = document.querySelector('.qBox');
  q.innerHTML = qnaList[qIdx].q;
  for (let i in qnaList[qIdx].a) {
    addAnswer(qnaList[qIdx].a[i].answer, qIdx, i);
  }
  //스텟 바올라가는
  var status = document.querySelector('.statusBar');
  status.style.width = (100 / endPoint) * (qIdx + 1) + '%';
}
//질문, 질문번호, ??
function addAnswer(answerText, qIdx, idx) {
  //응답 전체를 담는 박스
  var a = document.querySelector('.answerBox');
  //질문 선택 버튼
  var answer = document.createElement('button');
  //css 애니메이션 적용
  answer.classList.add('answerList');
  answer.classList.add('my-3');
  answer.classList.add('py-3');
  answer.classList.add('mx-auto');
  answer.classList.add('fadeIn');

  //질문노드를 데이터 js의 배열에있는 질문의 답과 연결하여 출력하게끔 한다
  a.appendChild(answer);
  answer.innerHTML = answerText;

  answer.addEventListener("click", function () {
    //응답 버튼
    var children = document.querySelectorAll('.answerList');
    for (let i = 0; i < children.length; i++) {
      children[i].disabled = true;
      children[i].style.WebkitAnimation = "fadeOut 0.5s";
      children[i].style.animation = "fadeOut 0.5s";
    }
    setTimeout(() => {
      var target = qnaList[qIdx].a[idx].type;
      var value = qnaList[qIdx].a[idx].value;
      for (let i = 0; i < target.length; i++) {
        select[target[i]] = value;
      }

      for (let i = 0; i < children.length; i++) {
        children[i].style.display = 'none';
      }
      goNext(++qIdx);
    }, 450)
  }, false);
}

//애니메이션
function goResult() {
  qna.style.WebkitAnimation = "fadeOut 1s";
  qna.style.animation = "fadeOut 1s";
  setTimeout(() => {
    result.style.WebkitAnimation = "fadeIn 1s";
    result.style.animation = "fadeIn 1s";
    setTimeout(() => {
      qna.style.display = "none";
      result.style.display = "block";
    }, 450)
  })
  calResult();
}

function setResult() {
  let point = calResult();
  return point;
}

function calResult() {
  var info = ["type", "smell", "flavor", "price", "alchol"];  
  var form = document.createElement("form");
      form.setAttribute("charset", "UTF-8");
      form.setAttribute("method", "post");
      form.setAttribute("action","/jukea/survayResult");
  for(var i=0; i< select.length; i++) {
    console.log(`배열 인덱스: ${info[i]}/ 값: ${select[i]}`);
      var hiddenField = document.createElement("input");
      hiddenField.setAttribute("type", "hidden");
      hiddenField.setAttribute("name", info[i]);
      hiddenField.setAttribute("value", select[i]);
      form.appendChild(hiddenField);
  }

  document.body.appendChild(form);
  //form.submit();
}
