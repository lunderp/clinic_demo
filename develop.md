# 《始末诊所》开发日志

## 2026-06-12

### 今日完成

- 完成全局 SceneManager 初版
- 使用 ColorRect + AnimationPlayer 实现黑屏过渡
- 将 SceneManager 设置为 Autoload，全局可调用
- 修复透明 FadeRect 遮挡按钮的问题

### 遇到的问题

透明的 ColorRect 虽然看不见，但仍然会挡住按钮点击。

### 解决方法

将 FadeRect 的 Mouse Filter 设置为 Ignore。

```gdscript

