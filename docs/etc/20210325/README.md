# 20210325

## Promise

프로미스는 자바스크립트 비동기 처리에 사용되는 객체입니다.

```javascript
$.get("url 주소/products/1", function(response) {
  // ...
});
```

위 API가 실행되면 서버에다가 ‘데이터 하나 보내주세요’ 라는 요청을 보내죠. 그런데 여기서 데이터를 받아오기도 전에 마치 데이터를 다 받아온 것 마냥 화면에 데이터를 표시하려고 하면 오류가 발생하거나 빈 화면이 뜹니다. 이와 같은 문제점을 해결하기 위한 방법 중 하나가 프로미스입니다.

```javascript
function getData() {
  return new Promise(function(resolve, reject) {
    $.get("url 주소/products/1", function(response) {
      if (response) {
        resolve(response);
      }
      reject(new Error("Request is failed"));
    });
  });
}

// 위 $.get() 호출 결과에 따라 'response' 또는 'Error' 출력
getData()
  .then(function(data) {
    console.log(data); // response 값 출력
  })
  .catch(function(err) {
    console.error(err); // Error 출력
  });
```

프로미스의 또 다른 특징은 여러 개의 프로미스를 연결하여 사용할 수 있다는 점입니다. then() 메서드를 호출하고 나면 새로운 프로미스 객체가 반환됩니다. 따라서, 아래와 같이 코딩이 가능합니다.

```javascript
new Promise(function(resolve, reject) {
  setTimeout(function() {
    resolve(1);
  }, 2000);
})
  .then(function(result) {
    console.log(result); // 1
    return result + 10;
  })
  .then(function(result) {
    console.log(result); // 11
    return result + 20;
  })
  .then(function(result) {
    console.log(result); // 31
  });
```
