export interface UserInfo {
  id: number
  name: string
  age: number
  avatar: Resource
  email?: string //可选字段
  content: string
  active: boolean
}