# research-next-build

- `next build` で生成されたファイルの差分検証するプロジェクト
- package.json に含まれるライブラリをアップデートすると、ビルドファイルにどのような変化が発生するか調べる

## 検証内容

- `polished` の v3 と v4 を利用しているプロジェクトをそれぞれビルドして、生成された `.next` をdiffコマンドによって比較する

- pattern1は `polished` の関数 `rgb` をimportしているnextのプロジェクトをビルドするして比較する
- pattern2は `polished` の関数 `rgba`をimportしているプロジェクトをビルドして比較する

## ビルドの設定項目について

今回使用するnextのプロジェクトは、`create-next-app` によって生成している。
デフォルトの設定から以下の項目を変更している。

- next.config.json から `swcMinify` の項目を `false` にする
- ビルド時に `next build` のオプション `--no-lint` をつける
- next.config.json の `generateBuildId` を利用し、ビルドIDを固定する


## 検証コマンド

```
cd pattern1
bash exec.sh
```

```
cd pattern2
bash exec.sh
```

- pattern1ではdiffがないが、pattern2はdiffが存在する
