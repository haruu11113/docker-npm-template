# Docker for npm

- docker version 20.10.11
- docker-compose version v2.2.1
- py-version : python 3.6
- packages : requirements.txt
- npm version:

## How to use and run those code

### 1. Clone this repocitory
```bash
git clone git@github.com:sozo-lab/care-record-dashboard.git

cd care-record-dashboard
git submodule update --init --recursive
```

### 2. Start Docker

#### When 1st time
```bash
make init
```

#### When after 2nd time
```bash
make up
```

### 3. Modify .envs


### 4. Install Packages
```bash
make npm-install
```

### 5. Start and Stop Nuxt Server

[start nuxt server]:

```bash
make npm-dev
```
-> go to http://localhost:3000/

[Stop Nuxt Server]:

```bash
Ctrl + c
```

### Stop Docekr (When finishe developing)
```bash
make up
```

### store template
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

## DB error
```
ALTER USER 'dbのユーザ名'@'%' IDENTIFIED WITH mysql\_native\_password BY 'パスワード';
```

## Reference
https://www.digitalocean.com/community/tutorials/how-to-add-authentication-to-your-app-with-flask-login-ja

## License
[MIT](./LICENSE)
# docker-npm-template
