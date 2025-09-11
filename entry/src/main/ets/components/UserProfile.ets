// UserProfile.ets
import { UserInfo } from '../model/UserInfo'
import pasteboard   from '@ohos.pasteboard'
import promptAction from '@ohos.promptAction'

@Preview
@Component
export struct UserProfile {
  /* 外部可传入，默认值保留方便预览 */
  @State userInfo: UserInfo = {
    id: 1,
    name: '张三',
    age: 18,
    avatar: $r('app.media.startIcon'),
    content: '我是一条简介',
    active: true
  }

  build() {
    Column() {
      /* 1. 头像 + 状态小圆点 */
      Stack() {
        Image(this.userInfo.avatar)
          .width(90)
          .height(90)
          .borderRadius(45)
          .backgroundColor('#FFF')
          .padding(4)

        Circle()
          .width(18)
          .height(18)
          .fill(this.userInfo.active ? '#00C853' : '#9E9E9E')
          .position({ x: 66, y: 66 })
          .stroke('#FFFFFF')
          .strokeWidth(2)
      }
      .margin({ top: 20 })

      /* 2. 用户信息 */
      Column() {
        Text(this.userInfo.name)
          .fontSize(26)
          .fontWeight(FontWeight.Bold)
          .maxLines(1)

        Text(`${this.userInfo.age} 岁`)
          .fontSize(16)
          .fontColor('#666')
          .margin({ top: 4 })

        if (this.userInfo.email) {
          Text(this.userInfo.email)
            .fontSize(14)
            .fontColor('#888')
            .margin({ top: 6 })
        }

        /* 简介：单击复制 + 成功提示 */
        Text(this.userInfo.content)
          .fontSize(16)
          .fontColor('#777')
          .margin({ top: 4 })
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .width('100%')
          .onClick(() => {
            // 写入剪贴板
            const data = pasteboard.createData(
              pasteboard.MIMETYPE_TEXT_PLAIN,
              this.userInfo.content
            )
            pasteboard.getSystemPasteboard().setData(data)

            // 提示用户
            promptAction.showToast({
              message: '简介已复制',
              duration: 1500
            })
          })
      }
      .alignItems(HorizontalAlign.Center)
      .margin({ top: 12 })

      Blank()

      /* 3. 操作按钮 */
      Button(this.userInfo.active ? '禁用用户' : '启用用户')
        .width(160)
        .height(40)
        .borderRadius(20)
        .fontSize(16)
        .fontColor('#FFFFFF')
        .backgroundColor(this.userInfo.active ? '#FF4081' : '#42A5F5')
        .onClick(() => {
          this.userInfo.active = !this.userInfo.active
        })

      Blank()
    }
    .width('100%')
    .height(280)
    .padding(16)
    .backgroundColor('#FFFFFF')
    .borderRadius(24)
    .linearGradient({
      angle: 135,
      colors: this.userInfo.active
        ? [['#FFF9C4', 0], ['#FFFFFF', 1]]
        : [['#F5F5F5', 0], ['#FFFFFF', 1]]
    })
    .shadow({
      radius: 12,
      color: 'rgba(0,0,0,0.08)',
      offsetX: 0,
      offsetY: 4
    })
  }
}