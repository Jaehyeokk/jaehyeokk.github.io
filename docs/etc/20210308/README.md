# 20210308

## 배열 내장함수 (Array built-in function)

### forEach

`forEach`는 `for`문을 대체할 수 있다.

아래는 `for`문을 사용했을 때,

```javascript
const alphabets = ["a", "b", "c", "d"];

for (let i = 0; i < alphabets.length; i++) {
  console.log(alphabets[i]);
}
```

아래는 `forEach`를 사용했을 때이다.

```javascript
const alphabets = ["a", "b", "c", "d"];

alphabets.forEach((alphabet) => {
  console.log(alphabet);
});
```

### map

`map`은 배열 안의 원소를 변환할 때 사용되며,

이 과정에서 새로운 배열이 만들어진다.

아래는 `for`문을 사용한 예,

```javascript
const array = [1, 2, 3, 4, 5, 6, 7, 8];

const added = [];
for (let i = 0; i < array.length; i++) {
  added.push(array[i] + array[i]);
}

console.log(added); // [2, 4, 6, 8, 10, 12, 14, 16]
```

아래는 `forEach`를 사용한 예,

```javascript
const array = [1, 2, 3, 4, 5, 6, 7, 8];

const added = [];

array.forEach((n) => {
  added.push(n + n);
});

console.log(added); // [2, 4, 6, 8, 10, 12, 14, 16]
```

아래는 `map`을 사용한 예이다.

```javascript
const array = [1, 2, 3, 4, 5, 6, 7, 8];

const add = (n) => n + n;
const added = array.map(add);
console.log(added); // [2, 4, 6, 8, 10, 12, 14, 16]
```

### indexOf

`indexOf`는 원하는 항목이 몇번째 원소인지 찾는 함수이다.

배열 안에 있는 값이 number, string, 또는 boolean일 때

찾고자하는 항목이 몇번째 원소인지 알아내려면 `indexOf` 를 사용하면 된다.

```javascript
const alphabets = ["a", "b", "c", "d"];
const index = alphabets.indexOf("c");
console.log(index); // 2
```

### findIndex

`findIndex`는 `indexOf`와 같이 원하는 항목이 몇번째 원소인지 찾는 함수이다.

`findIndex` 는 배열 안에 있는 원소가 객체이거나, 배열일 때 사용한다.

```javascript
const todos = [
  {
    id: 1,
    text: "HTML",
    done: true,
  },
  {
    id: 2,
    text: "CSS",
    done: true,
  },
  {
    id: 3,
    text: "JAVASCRIPT",
    done: true,
  },
  {
    id: 4,
    text: "FRAMEWORK",
    done: false,
  },
];

const index = todos.findIndex((todo) => todo.id === 3);
console.log(index); // 2
```

### find

`find`는 `findIndex`와 비슷하지만 인덱스가 아닌 값 자체를 리턴한다.

아래와 같이 해당 객체가 리턴되었다.

```javascript
const todos = [
  {
    id: 1,
    text: "HTML",
    done: true,
  },
  {
    id: 2,
    text: "CSS",
    done: true,
  },
  {
    id: 3,
    text: "JAVASCRIPT",
    done: true,
  },
  {
    id: 4,
    text: "FRAMEWORK",
    done: false,
  },
];

const todo = todos.find((todo) => todo.id === 3);
console.log(todo); // {id: 3, text: "JAVASCRIPT", done: true}
```

### filter

`filter`는 배열에서 특정 조건을 만족하는 값들만 따로 추출하여 새로운 배열을 만든다.

```javascript
const todos = [
  {
    id: 1,
    text: "HTML",
    done: true,
  },
  {
    id: 2,
    text: "CSS",
    done: true,
  },
  {
    id: 3,
    text: "JAVASCRIPT",
    done: true,
  },
  {
    id: 4,
    text: "FRAMEWORK",
    done: false,
  },
];

const tasksNotDone = todos.filter((todo) => todo.done === false);
console.log(tasksNotDone);
// [
//   {
//     id: 4,
//     text: '배열 내장 함수 배우기',
//     done: false
//   }
// ];
```

### splice

`splice`는 배열에서 특정 원소를 제거할 때 사용한다.

첫번째 파라미터는 어떤 인덱스부터 자를지,

두번째 파라미터는 그 인덱스부터 몇개를 자를지 의미한다.

아래와 같이 기존 배열에서 잘라낸다.

```javascript
const numbers = [10, 20, 30, 40];
const spliced = numbers.splice(2, 1); // 인덱스가 2인 배열의 원소부터 1개를 자르겠다.

console.log(spliced); // [30]
console.log(numbers); // [10, 20, 40]
```

### slice

`slice`는 `splice`와 비슷하지만 기존의 배열은 건드리지 않는다.

첫번째 파라미터는 어떤 인덱스부터 자를지,

두번째 파라미터는 어떤 인덱스 이전까지 자를지 의미한다.

아래와 같이 기존 배열은 그대로이다.

```javascript
const numbers = [10, 20, 30, 40];
const sliced = numbers.slice(1, 3); // 인덱스 1부터 시작해서 3전까지 자르겠다.

console.log(sliced); // [20, 30]
console.log(numbers); // [10, 20, 30, 40]
```

### push

`push`는 기존 배열에서 마지막에 원소를 추가한다.

```javascript
const numbers = [10, 20, 30, 40];
numbers.push(50);

console.log(numbers); // [10, 20, 30, 40, 50]
```

### pop

`pop`은 기존 배열에서 마지막 원소를 제거한다.

```javascript
const numbers = [10, 20, 30, 40];
numbers.pop();

console.log(numbers); // [10, 20, 30]
```

### unshift

`unshift`는 기존 배열 맨 앞에 원소를 추가한다.

```javascript
const numbers = [10, 20, 30, 40];
numbers.unshift(5);

console.log(numbers); // [5, 10, 20, 30, 40]
```

### shift

`shift`는 기존 배열에서 첫번째 원소를 제거한다.

```javascript
const numbers = [10, 20, 30, 40];
numbers.shift();

console.log(numbers); // [20, 30, 40]
```

### concat

`concat`은 여러개의 배열을 하나로 합쳐준다.

아래와 같이 기존 배열에 변화를 주지 않는다.

```javascript
const arr1 = [1, 2, 3];
const arr2 = [4, 5, 6];
const concated = arr1.concat(arr2);

console.log(concated); // [1, 2, 3, 4, 5, 6];
console.log(arr1); // [1, 2, 3]
```

### join

`join` 은 배열 안의 값들을 문자열 형태로 합쳐준다.

아래와 같이 기존 배열에 변화를 주지 않는다.

```javascript
const array = [1, 2, 3, 4, 5];
const joined = array.join("");

console.log(array.join()); // 1,2,3,4,5
console.log(array.join("")); // 12345
console.log(array.join(", ")); // 1, 2, 3, 4, 5
console.log(array); // [1, 2, 3, 4, 5]
```

### reduce

```javascript
```
