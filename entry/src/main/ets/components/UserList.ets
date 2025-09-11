// UserList.ets
import { UserProfile } from './UserProfile'   // ① 导入已有组件
import { UserInfo } from '../model/UserInfo'

@Component
export struct UserList {
  /* 列表级数据 */
  @State private userList: UserInfo[] = [
    { id: 1, name: '张三', age: 18, avatar: $r('app.media.startIcon'), content: '我是简介我是简介我是简介我是简介我是简介我是简介我是简介我是简介', active: true },
    { id: 2, name: '李四', age: 22, avatar: $r('app.media.startIcon'), content: '我是简介', active: true },
    { id: 3, name: '王五', age: 25, avatar: $r('app.media.startIcon'),content: '我是我是简介', active: false, email: 'wangwu@x.com' }
  ]

  build() {
    Column() {
      Text('用户列表').fontSize(24).fontWeight(FontWeight.Bold).padding(16)

      List({ space: 12 }) {
        ForEach(this.userList, (item: UserInfo, idx: number) => {
          ListItem() {
            /* ② 直接复用现成的 UserProfile 组件 */
            UserProfile({ userInfo: this.userList[idx] }) // 传当前项
          }
        }, (item: UserInfo) => item.id.toString())
      }
      .width('100%')
      .layoutWeight(1)
      .padding({ left: 16, right: 16 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }
}