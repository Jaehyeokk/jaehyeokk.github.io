# Deploy

## Netlify를 이용한 배포를 해보자.

### 순서

1. [Netlify][netlify] 가입

2. Github 연동 및 Repository 등록

3. Deploy 세팅

### 유의사항

1. base dir 설정

2. [SPA (Single Page Application) 배포 시 서버 설정][deploy-server]

### 환경 변수 파일을 이용하는 방법

1. project root 경로에 [.env 파일][.env] 생성

```sh
# .env 파일
변수=값
VUE_APP_TITLE=HELLO
# VUE_APP prefix를 붙이면 따로 등록하는 과정 없이 바로 사용 가능
```

```javascript
created() {
  console.log(VUE_APP_TITLE)
  // HELLO
}
```

[netlify]: https://www.netlify.com/
[deploy-server]: https://cli.vuejs.org/guide/deployment.html#netlify
[.env]: https://joshua1988.github.io/vue-camp/deploy/env-setup.html#env-%ED%8C%8C%EC%9D%BC
