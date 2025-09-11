import { UserInfo } from '../model/UserInfo'
import { StateExample } from '../components/StateExample'

@Entry
@Component
struct CardPage {
  @Prop user: UserInfo = {
    id: 111,
    name: '张三',
    age: 28,
    avatar: $r('app.media.startIcon'),
    email: 'zhangsan@qq.com',
    active: true,
    content: "简介"
  }

  build() {
    Column({ space: 20 }) {
        StateExample()
      }.padding(20)
    }
}