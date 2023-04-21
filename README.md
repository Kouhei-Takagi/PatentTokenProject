# PatentTokenProject
ERC721準拠の特許トークンを発行し、照会できるEthereumスマートコントラクト。OpenZeppelinのERC721およびCountersライブラリを使用して、特許情報を格納し、追跡します。
PatentTokenProjectは、特許権利をトークン化するためのEthereumスマートコントラクトです。このプロジェクトは、SolidityとTruffleフレームワークを使用して開発されています。

## 機能

- 特許をトークン化し、ERC721トークンとして発行
- 特許の詳細情報を参照

## 前提条件

- Node.jsとnpmがインストールされていること
- Truffleがインストールされていること
- Ganache（ローカル開発用Ethereumブロックチェーン）がインストールされていること

## インストール

1. GitHubリポジトリをクローンします：
```bash
git clone https://github.com/Kouhei-Takagi/PatentTokenProject.git
```

2. クローンしたディレクトリに移動します：
```bash
cd PatentTokenProject
```

3. 依存関係をインストールします：
```bash
npm install
```

## コントラクトのコンパイルとデプロイ
1. Ganacheを実行します：
```bash
ganache-cli
```

2. 別のターミナルウィンドウまたはタブで、コントラクトをコンパイルします：
```bash
truffle compile
```

3. コントラクトをデプロイします：
```bash
truffle migrate
```

## Truffleコンソールでのコントラクトの使用
1. Truffleコンソールを開きます：
```bash
truffle console
```

2. コントラクトのインスタンスを取得し、機能を実行します。以下は、特許をトークン化し、特許の詳細を取得する例です：
```Javascript
let instance = await PatentToken.deployed()
let accounts = await web3.eth.getAccounts()
let tokenId = await instance.mintPatent(accounts[0], "Patent Title", "Patent Number", "Patent Holder", "Date Granted")
let patentDetails = await instance.getPatentDetails(tokenId)
console.log(patentDetails)
```

3. コンソールを終了します：
```bash
.exit
```
