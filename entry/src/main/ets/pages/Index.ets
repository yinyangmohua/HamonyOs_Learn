import {ButtonPreview} from  '../components/MyButton'
import {MyCard} from  '../components/MyCard'
import {UserList} from  '../components/UserList'
import { StateExample } from '../components/StateExample'
import { UserInfo } from '../model/UserInfo'

@Entry
@Component
struct Index {
  @Prop title: string = '基础组件学习';

  build() {
    Column({ space: 20 }) {
      Text(this.title).fontSize(24).fontWeight(FontWeight.Bold).padding(16)
      TextInput({ placeholder: '输入' })
        .width('90%')
        .height(40)
        .maxLength(20)
        .fontSize(14)
        .backgroundColor('#F5F5F5')
        .borderRadius(20)
        .padding({ left: 16, right: 16 })
        .margin({ top: 8, bottom: 12 })
      ButtonPreview()
    }
  }
}