# Docker for npm

- docker version 20.10.11
- docker-compose version v2.2.1
- npm version: lts

## How to use

### 1. Clone this repocitory
```bash
git clone ????????????
cd ?????
```

### 2. add your project file as a submodule
```bash
rm -rf ./nuxt
git submodule add ??????????????? nuxt
git submodule init
git submodule update
```

### 3. Start Docker
#### ※if you are using mac, turn on ```~/.ssh:/root/.ssh``` on ```docker-compose.yml```**

```yaml
  ~
  ~
  ~
  tty: true
  volumes:
    - ./:/home/ec2-user/code
    # for mac github config
    - ~/.ssh:/root/.ssh
```

#### start docker
```bash
make build
make up
```

### 4. open vscode
#### 4(a) open vscode on devcontainer *need to install devconatiner-cli from vscode
```bash
devcontainer open
```

#### 4(b) if you want to open vscode on local
```bash
code .
```

### 5. Install Packages
```bash
make npm-install
```

### Start and Stop Nuxt Server

[start nuxt server]:

```bash
make npm-dev
  or

make nuxt
npm run dev
```
-> go to http://localhost:3000/

[Stop Nuxt Server]:

```bash
Ctrl + c
```

### 4. Stop Docker
```
make stop
```

## store template
```js
export const state = () => ({
  変数名: 初期値,
  変数名: 初期値
})

export const getters = {
  // stateの状態を外部で取り出すときに使用する
  変数名: state => state.変数名
}

export const mutations = {
  ミューテーション関数名(state, 引数){
    // ここでstate（ストアの状態）を変更する
    state.変数名 = 値
  }
}

export const actions = {
  async アクション関数名({ commit }){
    // ここでミューテーションを呼び出し、外部とのAPI通信や非同期処理も行う
    commit('ミューテーション関数名', 引数)
  }
}
```


## Reference
https://www.digitalocean.com/community/tutorials/how-to-add-authentication-to-your-app-with-flask-login-ja

## License
[MIT](./.github/LICENSE)
# docker-npm-template
