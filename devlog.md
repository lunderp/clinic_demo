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




## 2026-06-14

- 初步完成病人的esource结构，选择树状直接嵌入选项与对话
- 初版对话节点的Resource结构
- 初版对话选项、单次对话的Resource结构
- 更改main_clinic的背景
- 初步实现对话显示

### 遇到的问题

文本需要自动换行、没有接入病人的肖像、没有对话左右角色的区分，另外主角的对话似乎现在也是嵌在病人里的，是否需要调整结构还需要思考，需要更多完善。
