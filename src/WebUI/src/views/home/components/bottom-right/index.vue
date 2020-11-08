<template>
  <nm-box v-bind="box">
    <ve-pie :data="chartData" :extend="chartExtend" height="100%"></ve-pie>
  </nm-box>
</template>
<script>
export default {
  data() {
    return {
      box: {
        title: '本年度企业用电月占比',
        icon: 'chart-pie',
        header: true,
        page: true,
        noPadding: true,
        titleBold: true
      },
      month: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
      date: [],
      chartExtend: {
        legend: {
          orient: 'horizontal',
          bottom: '30',
          itemHeight: 10,
          itemWidth: 10,
          data: []
        },
        series: {
          radius: '60%',
          center: ['50%', '35%'],
          label: {
            show: false
          },
          labelLine: {
            show: false
          }
        }
      },
      chartData: {
        columns: ['月份', '次数'],
        rows: []
      }
    }
  },
  created() {
    this.getData()
    setTimeout(this.refresh, 1000)
  },
  methods: {
    getData() {
      this.chartExtend.legend.data = []
      this.chartData.rows = []
      for (let index = 0; index < 12; index++) {
        this.chartData.rows.push({ 月份: this.month[index], 次数: Math.floor(Math.random() * (10 - 100)) + 100 })
        this.chartExtend.legend.data.push({
          name: this.month[index],
          // 强制设置图形为圆。
          icon: 'circle'
        })
      }
    },
    refresh() {
      this.getData()
    }
  }
}
</script>
