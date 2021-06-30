# 20210316

## 기록

Vue를 사용하면서 input에 1000단위마다 comma를 찍어야 하는 일이 생겼다.

소수점까지 표현이 가능해야 하며 당연히 소수점 뒤에는 콤마가 찍히면 안된다.

구글링을 해서 정규식을 찾을 수 있었지만, 내가 원하는 조건대로 딱 나오지 않았지만

힌트를 많이 얻을 수 있었다.

1. 첫번째로 해야할 일은 문자열인 콤마를 추가하기 위해 input type을 text로 바꾸는 것이다.<br>

```html
<input v-model="data" type="text" placeholder="placeholder" />
```

2. 두번째로 해야 할 일은 watch를 이용해서 값을 변경할 것인지,<br>
   인풋 이벤트를 이용해서 값을 변경할 것인지 결정하는 것이다.

```html
<input :value="data" type="text" placeholder="placeholder" @input="value" />
```

3. 나는 button으로 input 값을 제어할 수 있었기 때문에 watch를 이용했다.

```javascript
watch {
  data(val) {
    // 숫자와 소수점만 입력 가능하도록 했다.
    const input_key_number = val.replace(/[^0-9.]/g, '')
    // 소수점 뒤에는 콤마가 찍히면 안되기 때문에 소수점을 기준으로 나누고,
    const parts = input_key_number.toString().split('.')
    let result = ''
    // 소수점을 기준으로 나눴을 때 Array[1]이 존재한다면 아래와 같이 값을 변경해주고,
    if (parts[1]) {
      result =
        parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ',') +
        (parts[1] ? '.' + parts[1] : '')
    // 그렇지 않다면 아래와 같이 값을 변경해줬다.
    } else {
      result = input_key_number.replace(/\B(?=(\d{3})+(?!\d))/g, ',')
    }
    this.data = result
  },
},
```

4. 입력된 값을 전송할 때에는 콤마를 제거해서 보냈다.

```javascript
methods: {
  removeComma(value) {
    value = value.replace(/,/g, '')
    return value
  },
},
```

5. 문제가 생겼다. 정상적으로 입력을 한다면 문제가 되지 않지만, <br>
   소수점을 여러번 입력하면 그대로 입력이 되어 망가지는 현상이 발견되었다. <br>
   그래서 예외처리를 추가했다.

```javascript
data(val) {
  // 만약 소수점이 두번 입력되지 않았다면 숫자와 소수점을 입력 받고
  if (val.search(/\.\./g) === -1) {
    val = val.replace(/[^0-9.]/g, '')
  // 그게 아니라면 숫자만 입력 받는다.
  } else {
    val = val.replace(/[^0-9]/g, '')
  }
  const parts = val.toString().split('.')
  let result = ''
  if (parts[1]) {
    result =
      parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ',') +
      (parts[1] ? '.' + parts[1] : '')
  } else {
    result = val.replace(/\B(?=(\d{3})+(?!\d))/g, ',')
  }
  this.data = result
},
```

문제를 해결하면서 정규식을 가볍게 익힐 수 있었다.
