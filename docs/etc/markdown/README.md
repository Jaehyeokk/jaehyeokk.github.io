# Markdown

<br>

## 마크다운의 특징

### 마크다운의 장점

1. 문법이 쉽다.
2. 텍스트 형태로 저장되기 때문에 용량이 적고 관리하기 용이하다.
3. 별도의 도구 없이 모든 에디터에서 작성가능하다.
4. 지원하는 프로그램과 플랫폼이 다양하다.

<br>

### 마크다운의 단점

<br>

1. 표준이 없기 때문에 도구에 따라서 변환방식이나 생성물이 다르다.
2. HTML의 모든 마크업을 표현하는데 부족하다.

<br>

## 마크다운의 문법 (Syntax)

> ### 제목 (Header)

#### 글머리

`#` 의 개수로 Heading level을 표현한다.

```markdown
# (h1) 제목1

## (h2) 제목2

### (h3) 제목3

#### (h4) 제목4

##### (h5) 제목5

###### (h6) 제목6
```

<br>

`<h1>`과 `<h2>`는 다음과 같이 표현할 수 있다.

```markdown
# (h1) 제목1

## (h2) 제목2
```

<br>
<br>

> ### 문단

<br>

#### 문단 구분

문단과 문단 사이에 빈줄을 넣어서 문단을 구분한다.

```markdown
문단과
// 빈줄
문단사이
```

`<br>` tag를 넣어서 문단을 구분한다.

```markdown
문단과<br>
문단사이
```

<br>
<br>

> ### 수평선

<br>

```markdown
--- (수평선 생성1)
\*\*\* (수평선 생성2)
\_\_\_ (수평선 생성3)
```

<br>

#### 블럭 인용 (BlockQuote)

블록인용 문자 `>` 를 사용한다.

```markdown
> 블럭
>
> > 블럭 1
> >
> > > - 내용 1-1
> > > - 내용 1-2
> > >   블럭 2
> > >   내용 2-1
> > >   내용 2-2
```

<br>
<br>

> ### 목록

<br>

#### 목록 (List)

순서가 있는 목록(ol)은 숫자와 점을 사용한다.

```markdown
1. 목록1
2. 목록2
3. 목록3
```

<br>

순서가 없는 목록(ul)은 기호 ( \* , - , + ) 를 사용한다.

```markdown
- 목록1
  - 목록2
    - 목록3

* 목록1
  - 목록2
    - 목록3

- 목록1
  - 목록2
    - 목록3

* 목록1 (혼용 가능)
  - 목록2
    - 목록3-1
    - 목록3-2
```

<br>
<br>

> ### 강조

<br>

#### 이탤릭체 (Italic)

`*(asterisks)` 또는 `_(underscore)` 로 감싸는 방식으로 표현한다.

```markdown
_이탤릭체_
_이탤릭체_
```

#### 두껍게 (Bold)

`**(double asterisks)` 또는 `__(double underscore)`로 감싸는 방식으로 표현한다.

```markdown
**두껍게**
**두껍게**
```

#### 취소선 (Strikethrough)

`~~(double tilde)로 감싸는 방식으로 표현한다.`

```markdown
~~취소선~~
```

#### 밑줄 (Underline)

`<u></u> tag로 감싸는 방식으로 표현한다.`

```markdown
<u>밑줄</u>
```

<br>
<br>

> ### 링크 (Link)

<br>

### 일반 링크

`[text](url)` 형식으로 링크를 표현한다.<br>
`[text](url "링크설명 (title)")` url 안에 `""` 를 추가해서 링크설명(title)을 추가할 수 있다.

```markdown
[google](https://www.google.com)
[google](https://www.google.com "구글홈페이지")
```

<br>

#### 참조링크

`(../)` 경로를 이용한 상대적 참조링크를 만들 수 있다.<br>
URL 부분에 대괄호(`[]`)로 링크를 담고 있는 대괄호(`[]: https://...`)를 참조할 수 있다.

```markdown
[상대적 참조](../users/login)
[GitHub][gibhublink]
안녕하세요 [참조링크]입니다.

[gibhublink]: https://github.com
[참조링크]: https://charmjoelink.com
```

<br>

#### 자동링크

일반 URL 이나 꺽쇠 괄호(`< >` Angle Brackets)안의 URL은 자동으로 링크를 사용한다.

```markdown
https://helloworld.com
<https://hiworld.com>
```

<br>
<br>

> ### 이미지 (Image)

<br>

#### 일반 이미지

링크와 비슷하지만 앞에 `!`가 붙는다.

```markdown
![Alt Text](./images/hi.png "이미지설명(title)")
![peng][pengimg]

[pengimg]: http://www.peng.com/img/pengimg.png "Mr. Peng"
```

<br>

#### 이미지 크기조절

원시태그 `<img>`를 사용하여 크기를 조절할 수 있다.

```markdown
<img width="150" alt="peng" src="http://www.peng.com/img/pengimg.png">
```

<br>

#### 링크 이미지

이미지 코드를 링크 코드로 감싼다.

```markdown
[![Alt Text](./images/hi.png)](https://github.com "링크설명(title)")
[<img width="150" alt="" src="">](https://github.com "링크설명(title)")
```

<br>
<br>

> ### 코드 블럭

<br>

#### 인라인 (Inline) 코드 강조

숫자 1번 키 왼쪽에 있는 <code>`</code> 를 감싸 인라인에서 코드를 강조한다.

```markdown
`<div>HTML</div>` div는 HTML 태그입니다.
```

<br>

#### 블럭 (Block) 코드 강조

<code>`</code>를 3번 입력하여 입력하여 열어주고 다시 닫아주어 코드를 강조한다.<br>
입력하여 열 때 코드 종류를 적어준다.

<pre>
```css
.list > li {
  position: sticky;
  top: 40px;
}
```
</pre>
<pre>
```javascript
function func() {
  var a = 'b + c';
  return a;
}
```
</pre>

<br>
<br>

> ### 표 (Table)

<br>

헤더 셀을 구분할 때 3개 이상의 -(dash) 기호가 필요하다.<br>
헤더 셀을 구분하면서 :(Colons) 기호로 셀(열/칸) 안에 내용을 정렬한다.<br>
가장 좌측과 가장 우측에 있는 |(vertical bar) 는 생략이 가능하다.

```markdown
| 헤더셀 | 헤더셀 | 헤더셀 |
| ------ | :----: | -----: |
| 셀     |   셀   |     셀 |
| 셀     |   셀   |        |
| 셀     |   셀   |     셀 |
| 셀     |   셀   |        |

| 헤더셀 | 헤더셀 | 헤더셀 |
| ------ | :----: | -----: |
| 셀     |   셀   |     셀 |
| 셀     |   셀   |
| 셀     |   셀   |     셀 |
| 셀     |   셀   |
```

<br>
<br>

> ### 원시 HTML

<br>

#### 마크다운 문법이 아닌 원시 HTML 문법을 사용할 수 있다.

```markdown
<u></u>
<img src="">
```
