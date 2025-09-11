/**
 * ButtonPreview.ets
 * 简要描述：可预览按钮组件
 * 作者：moqi
 * 日期：2025/9/9
 */
import { router } from "@kit.ArkUI"

// 类似Vite的HMR热更新预览
@Preview
@Component
export struct ButtonPreview {
  build() {
    Column({ space: 10 }) {
      Button('主要按钮')
        .type(ButtonType.Normal)
        .backgroundColor('#007AFF')

      Button('次要按钮')
        .type(ButtonType.Normal)
        .backgroundColor('#34C759')

      Button('危险按钮')
        .type(ButtonType.Normal)
        .backgroundColor('#FF3B30')

      Button('登录页面')
        .type(ButtonType.Normal)
        .backgroundColor('#007AFF')
        .onClick(() =>
          router.pushUrl({
            url: 'pages/LoginPage'
          })
        )
      Button('数据更新')
        .type(ButtonType.Normal)
        .backgroundColor('#007AFF')
        .onClick(() =>
        router.pushUrl({
          url: 'pages/CardPage'
        })
        )
      Button('用户列表')
        .type(ButtonType.Normal)
        .backgroundColor('#007AFF')
        .onClick(() =>
        router.pushUrl({
          url: 'pages/ListPage'
        })
        )
      Button('商品列表')
        .type(ButtonType.Normal)
        .backgroundColor('#007AFF')
        .onClick(() =>
        router.pushUrl({
          url: 'pages/ProductListPage'
        })
        )
      Button('主题设置')
        .type(ButtonType.Normal)
        .backgroundColor('#007AFF')
        .onClick(() =>
        router.pushUrl({
          url: 'pages/SettingsPage'
        })
        )
      Button('数据监听')
        .type(ButtonType.Normal)
        .backgroundColor('#007AFF')
        .onClick(() =>
        router.pushUrl({
          url: 'pages/WatchPage'
        })
        )
    }
    .padding(20)
  }
}