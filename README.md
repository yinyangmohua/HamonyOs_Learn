# HarmonyOS 基础学习指南

---

## 1. 学习路径总览（30 min 速览）

| 阶段 | 目标 | 预计时长 | 关键产出 |
|---|---|---|---|
| **环境** | 装好 DevEco Studio，能跑 Hello World | 1 h | 模拟器里出现“你好，鸿蒙” |
| **语法** | 掌握 ArkTS 基础语法 + 声明式 UI | 4 h | 写一个计数器页面 |
| **工程** | 理解 Module、Ability、Page 三级结构 | 2 h | 手动新建一个 Feature Module |
| **调试** | 真机调试、日志查看、热重载 | 1 h | 真机断点成功 |
| **生态** | 会调用系统权限、网络、数据库 | 4 h | 拉取 GitHub 天气接口并展示 |
| **上架** | 签名→编译→上传 AppGallery | 1 h | 生成第一个 `.app` 包 |

---

## 2. 环境搭建（Windows/macOS 通用）

### 2.1 安装 DevEco Studio
1. 官网下载 [developer.harmonyos.com](https://developer.harmonyos.com)
2. 一路 Next，**勾选**：
    - DevEco Studio
    - HarmonyOS SDK（API 12 及以上）
    - 模拟器（Emulator 12）
3. 首次启动 → `Configure → SDK Manager` → 确认 `API 12` 已打勾 → OK

### 2.2 创建第一个工程
| 字段 | 示例值 | 说明 |
|---|---|---|
| Project name | HelloHarmony | 随意 |
| Bundle name | com.example.hello | 反向域名 |
| Save location | D:\Code\Harmony | 路径无中文 |
| Compile SDK | API 12 | 2025 年主流 |

Finish 后等待 Gradle 同步（国内可配置华为镜像）。

### 2.3 跑通模拟器
点击 ▶️ Run，看到“你好，鸿蒙”即成功。

---

## 3. ArkTS 语法速通（TypeScript 超集）

### 3.1 基础类型
```ts
let isVisible: boolean = false;
let count: number = 0;
let title: string = '鸿蒙';
let list: string[] = ['A', 'B'];
