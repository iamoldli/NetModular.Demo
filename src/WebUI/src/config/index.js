const isDev = process.env.NODE_ENV !== 'production'

const config = {
  baseUrl: 'https://api.demo.17mkh.com/api/',
  /** 账户类型 */
  accountTypes: [
    { label: '管理员', value: 0 },
    { label: '员工', value: 1 }
  ]
}

// 开发模式
if (isDev) {
  // config.baseUrl = 'http://localhost:6220/api/'
}
export default config
