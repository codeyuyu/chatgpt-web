# ChatGPT-API Demo


基于 [ddiu8081/chatgpt-demo](https://github.com/ddiu8081/chatgpt-demo) 二次开发。
```bash
    1.原项目即使配置完.env还要docker compose build 重新构建镜像.修改为直接参数传递run就行
    
    2.todo 增加默认prompt
   ```


![chat-logo](https://cdn.staticaly.com/gh/yzh990918/static@master/chat-logo.webp)

## 本地运行

### 前置环境

1. **Node**: 检查您的开发环境和部署环境是否都使用 `Node v18` 或更高版本。你可以使用 [nvm](https://github.com/nvm-sh/nvm) 管理本地多个 `node` 版本。
   ```bash
    node -v
   ```
2. **PNPM**: 我们推荐使用 [pnpm](https://pnpm.io/) 来管理依赖，如果你从来没有安装过 pnpm，可以使用下面的命令安装：
   ```bash
    npm i -g pnpm
   ```
3. **OPENAI_API_KEY**: 在运行此应用程序之前，您需要从 OpenAI 获取 API 密钥。您可以在 [https://beta.openai.com/signup](https://beta.openai.com/signup) 注册 API 密钥。

### 起步运行

1. 安装依赖
   ```bash
    pnpm install
   ```
2. 复制 `.env.example` 文件，重命名为 `.env`，并添加你的 [OpenAI API key](https://platform.openai.com/account/api-keys) 到 `.env` 文件中
   ```bash
    OPENAI_API_KEY=sk-xxx...
   ```
3. 运行应用，本地项目运行在 `http://localhost:3000/`
   ```bash
    pnpm run dev
   ```

## 部署

### Deploy With Netlify

[![Deploy with Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/codeyuyu/chatgpt-web#OPENAI_API_KEY=&HTTPS_PROXY=&OPENAI_API_BASE_URL=&HEAD_SCRIPTS=&SECRET_KEY=&OPENAI_API_MODEL=&SITE_PASSWORD=)

**Step-by-step deployment tutorial:**

1. [Fork](https://github.com/ddiu8081/chatgpt-demo/fork) this project，Go to [https://app.netlify.com/start](https://app.netlify.com/start) new Site, select the project you `forked` done, and connect it with your `GitHub` account.

![image](https://cdn.staticaly.com/gh/yzh990918/static@master/20230310/image.3nlt4hgzb16o.webp)

![image](https://cdn.staticaly.com/gh/yzh990918/static@master/20230310/image.5fhfouap270g.webp)


2. Select the branch you want to deploy, then configure environment variables in the project settings.

![image](https://cdn.staticaly.com/gh/yzh990918/static@master/20230311/image.gfs9lx8c854.webp)

3. Select the default build command and output directory, Click the `Deploy Site` button to start deploying the site。

![image](https://cdn.staticaly.com/gh/yzh990918/static@master/20230311/image.4jky9e1wbojk.webp)

### 部署在 Docker （修改点 原项目这里即使配置完.env还要docker compose build 重新构建镜像 直接参数传递run就行 ）

**一键运行**
```bash
docker run --name=chatgpt-web -e OPENAI_API_KEY="sk-yourkey" -p 3000:3000 -d codeyuyu/chatgpt-web:latest
```

## 环境变量

配置本地或者部署的环境变量
（修改点 原项目这里即使配置完.env还要docker compose build 重新构建镜像 直接参数传递run就行 ）
| 名称 | 描述 | 默认 |
| --- | --- | --- |
| `OPENAI_API_KEY` | 你的 OpenAI API Key | `null` |
| `HTTPS_PROXY` | 为 OpenAI API 提供代理. e.g. `http://127.0.0.1:7890` | `null` |
| `OPENAI_API_BASE_URL` | 请求 OpenAI API 的自定义 Base URL. | `https://api.openai.com` |
| `HEAD_SCRIPTS` | 在页面的 `</head>` 之前注入分析或其他脚本 | `null` |
| `SECRET_KEY` | 项目的秘密字符串。用于生成 API 调用的签名 | `null` |
| `SITE_PASSWORD` | 为网站设置密码，支持使用英文逗号创建多个密码。如果未设置，则该网站将是公开的 | `null` |
| `OPENAI_API_MODEL` | 使用的 OpenAI 模型. [模型列表](https://platform.openai.com/docs/api-reference/models/list) | `gpt-3.5-turbo` |



## 微信体验交流群

加入ChatGPT体验交流群，与AI技术领域的专家和爱好者一起探讨最前沿的信息！在这里，你可以体验到最先进的人工智能技术，与志同道合的人交流，共同提升你的知识水平。不管你是专业人士还是爱好者，都欢迎加入我们的群体！

请联系微信`yuancaij1`。
<img src="https://github.com/codeyuyu/SmartInvest/blob/master/trendStrategy/WechatIMG353.jpeg?raw=true" width="300"/>
