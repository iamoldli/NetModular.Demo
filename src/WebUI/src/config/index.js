const isDev = process.env.NODE_ENV !== 'production'

const config = {
  baseUrl: 'https://api.nm.iamoldli.com/api/'
}

// 开发模式
if (isDev) {
  config.baseUrl = 'https://api.nm.iamoldli.com/api/'
}
export default config
