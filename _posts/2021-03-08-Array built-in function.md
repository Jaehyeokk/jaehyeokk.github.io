
## 배열 내장함수 (Array built-in function)

### forEach

`forEach`는 `for`문을 대체할 수 있다.

아래는 `for`문을 사용했을 때,
```javascript
const alphabets = ['a', 'b', 'c', 'd'];

for (let i = 0; i < alphabets.length; i++) {
  console.log(alphabets[i]);
}
```

아래는 `forEach`를 사용했을 때이다.
```javascript
const alphabets = ['a', 'b', 'c', 'd'];

alphabets.forEach(alphabet => {
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

array.forEach(n => {
  added.push(n + n);
});

console.log(added); // [2, 4, 6, 8, 10, 12, 14, 16]
```

아래는 `map`을 사용한 예이다.
```javascript
const array = [1, 2, 3, 4, 5, 6, 7, 8];

const add = n => n + n;
const added = array.map(add);
console.log(added); // [2, 4, 6, 8, 10, 12, 14, 16]
```

### indexOf

`indexOf`는 원하는 항목이 몇번째 원소인지 찾는 함수이다.

배열 안에 있는 값이 number, string, 또는 boolean일 때

찾고자하는 항목이 몇번째 원소인지 알아내려면 `indexOf` 를 사용하면 된다.

```javascript
const alphabets = ['a', 'b', 'c', 'd'];
const index = alphabets.indexOf('c');
console.log(index); // 2
```

### findIndex

`findIndex`는 `indexOf`와 같이 원하는 항목이 몇번째 원소인지 찾는 함수이다.

`findIndex` 는 배열 안에 있는 원소가 객체이거나, 배열일 때 사용한다.

```javascript
const todos = [
  {
    id: 1,
    text: 'HTML',
    done: true
  },
  {
    id: 2,
    text: 'CSS',
    done: true
  },
  {
    id: 3,
    text: 'JAVASCRIPT',
    done: true
  },
  {
    id: 4,
    text: 'FRAMEWORK',
    done: false
  }
];

const index = todos.findIndex(todo => todo.id === 3);
console.log(index); // 2
```

### find

`find`는 `findIndex`와 비슷하지만 인덱스가 아닌 값 자체를 리턴한다.

아래와 같이 해당 객체가 리턴되었다.
```javascript
const todos = [
  {
    id: 1,
    text: 'HTML',
    done: true
  },
  {
    id: 2,
    text: 'CSS',
    done: true
  },
  {
    id: 3,
    text: 'JAVASCRIPT',
    done: true
  },
  {
    id: 4,
    text: 'FRAMEWORK',
    done: false
  }
];

const todo = todos.find(todo => todo.id === 3);
console.log(todo); // {id: 3, text: "JAVASCRIPT", done: true}
```

### filter

`filter`는 배열에서 특정 조건을 만족하는 값들만 따로 추출하여 새로운 배열을 만든다.

```javascript
const todos = [
  {
    id: 1,
    text: 'HTML',
    done: true
  },
  {
    id: 2,
    text: 'CSS',
    done: true
  },
  {
    id: 3,
    text: 'JAVASCRIPT',
    done: true
  },
  {
    id: 4,
    text: 'FRAMEWORK',
    done: false
  }
];

const tasksNotDone = todos.filter(todo => todo.done === false);
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

```javascript
```
### slice

```javascript
```
### shift

```javascript
```
### pop

```javascript
```
### unshift

```javascript
```
### concat

```javascript
```
### join

```javascript
```
### reduce

```javascript
```