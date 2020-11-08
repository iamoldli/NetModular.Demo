import components from './components'
import routes from './routes'
import VCharts from 'v-charts'

export default {
  module: {
    name: 'demo',
    code: 'demo',
    version: '1.0.0',
    description: 'NetModular demo'
  },
  routes,
  components,
  callback({ Vue }) {
    Vue.use(VCharts)
  }
}
