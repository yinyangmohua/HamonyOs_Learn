import {UserList} from  '../components/UserList'

@Entry
@Component
struct ListPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      UserList().height('100%')
    }
  }
}