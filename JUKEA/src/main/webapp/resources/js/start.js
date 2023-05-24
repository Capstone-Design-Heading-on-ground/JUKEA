/**
 * 
 */
const main = document.querySelector("#main");
const qna = document.querySelector("#qna");
const result = document.querySelector("#result");
const endPoint = 12;
const select = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

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
      for (let i = 0; i < target.length; i++) {
        select[target[i]] += 1;
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
  setResult();
}

function setResult() {
  let point = calResult();
  //결과를 대입하고 데이터js에 인포리스트 배열의 값을 가지고 오게 하는것
  const resultName = document.querySelector('.resultName');
  resultName.innerHTML = infoList[point].name;
  const resultDesc = document.querySelector('.resultDesc');
  resultDesc.innerHTML = infoList[point].desc;
  // var resultImg = document.createElement('img');
  // const imgDiv = document.querySelector('#resultImg');
  // var imgURL = 'img/image-' + point + '.png';
  // resultImg.src = imgURL;
  // resultImg.alt = point;
  // resultImg.classList.add('img-fluid');
  // imgDiv.appendChild(resultImg);
  return point;
}

function calResult() {
  var result = select.indexOf(Math.max(...select)); // 배열의 최대값을 가져온다
  return result;
}
