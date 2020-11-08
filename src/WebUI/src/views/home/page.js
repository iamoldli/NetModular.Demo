/** 页面信息 */
const page = new (function() {
  this.title = '首页'
  this.name = 'demo_home'
  this.path = '/demo/home'
  this.icon = 'home'
})()

/** 路由信息 */
export const route = {
  page,
  component: () => import(/* webpackChunkName: "demo.home" */ './index')
}

export default page
