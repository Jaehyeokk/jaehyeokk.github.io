# Webpack

### NPM 커스텀 명령어

package.json 에서 NPM 커스텀 명령어를 정의할 수 있다.

```json
// package.json
// npm 커스텀 명령어를 정의할 수 있다.

"scripts": {
  "build": "webpack --mode=none"
}

// 터미널에서 npm run build 와 같이 명령을 실행할 수 있다.
```

### 웹팩 설정 파일

웹팩 설정을 webpack.config.js 파일에서 따로 정의할 수 있다.

```javascript
// path는 node.js API
var path = require("path");
var webpack = require("webpack");

module.exports = {
  // mode는 webpack 4버전에서 추가되었다.
  // mode : "(production || development || none)"
  mode: "production",
  // entry
  entry: "./src/main.js",
  // output
  output: {
    // path는 output으로 나올 파일이 저장될 경로
    path: path.resolve(__dirname, "./dist"),
    // publicPath는 빌드된 파일들이 위치할 서버 상의 경로
    publicPath: "/dist/",
    filename: "build.js",
  },
  module: {
    rules: [
      {
        // test에 로딩할 파일을 설정
        test: /\.css$/,
        // use에 적용할 로더를 설정
        use: ["vue-style-loader", "css-loader"],
      },
      {
        test: /\.vue$/,
        loader: "vue-loader",
        // options는 loader의 부가적인 option을 정할때 사용한다.
        // 각각의 loader마다 option은 다르니 문서를 참고하자.
        options: {
          loaders: {},
        },
      },
      {
        test: /\.js$/,
        loader: "babel-loader",
        // exclude는 loader에서 제외할 폴더나 파일을 설정
        exclude: /node_modules/,
      },
      {
        test: /\.(png|jpg|gif|svg)$/,
        loader: "file-loader",
        options: {
          name: "[name].[ext]?[hash]",
        },
      },
    ],
  },
  // resolve는 webpack이 알아서 경로나 확장자를 처리할 수 있게 도와주는 옵션
  resolve: {
    alias: {
      // resolve.alias에 이름과 경로를 넣어주면
      // key에 매칭된 path로 바꿔서 build 해준다.
      // ex) import Utility from '../../../utilities/utility';
      // -> import Utility from 'Utilities/utility';
      Templates: path.resolve(__dirname, "src/templates/"),
    },
    // extensions에 넣은 확장자들은 웹팩에서 알아서 처리해준다
    // 따라서 파일에 확장자들을 입력할 필요가 없어진다.
    extensions: ["*", ".js", ".vue", ".json"],
  },
  devServer: {
    historyApiFallback: true,
    noInfo: true,
    overlay: true,
  },
  performance: {
    hints: false,
  },
  devtool: "#eval-source-map",
};

// webpack 3버전에서는 mode 가 없었기 때문에 아래와 같이 설정 해줘야 했다.

// if (process.env.NODE_ENV === 'production') {
//   module.exports.devtool = '#source-map'
//   // http://vue-loader.vuejs.org/en/workflow/production.html
//   module.exports.plugins = (module.exports.plugins || []).concat([
//     new webpack.DefinePlugin({
//       'process.env': {
//         NODE_ENV: '"production"'
//       }
//     }),
//     new webpack.optimize.UglifyJsPlugin({
//       sourceMap: true,
//       compress: {
//         warnings: false
//       }
//     }),
//     new webpack.LoaderOptionsPlugin({
//       minimize: true
//     })
//   ])
// }
```
