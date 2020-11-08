<template>
  <nm-box v-bind="box">
    <nm-flex fix="60px">
      <template v-slot:top>
        <el-row :gutter="3">
          <el-col :span="12" :offset="2">
            <div class="nm-pmr-home-card">
              今日：
              <span class="nm-text-danger">10次</span>
            </div>
          </el-col>
          <el-col :span="10">
            <div class="nm-pmr-home-card">
              本月：
              <span class="nm-text-danger">30次</span>
            </div>
          </el-col>
        </el-row>
      </template>
      <template v-slot:bottom>
        <ve-histogram :data="chartData" :extend="chartExtend" :settings="chartSettings" height="100%"></ve-histogram>
      </template>
    </nm-flex>
  </nm-box>
</template>
<script>
export default {
  data() {
    return {
      box: {
        title: '污处异常报警及报警统计',
        icon: 'chart-bar',
        header: true,
        page: true,
        titleBold: true,
        noPadding: true
      },
      month: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
      chartSettings: {
        label: {
          show: false
        },
        labelLine: {
          show: false
        }
      },
      chartExtend: {
        legend: {
          show: false
        },
        grid: {
          top: 10,
          bottom: 10
        },
        color: ['#409eff'],
        xAxis: {
          axisLabel: {
            // 底部文字倾斜
            interval: 0,
            rotate: -60
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
      this.chartData.rows = []
      for (let index = 0; index < 12; index++) {
        this.chartData.rows.push({ 月份: this.month[index], 次数: Math.floor(Math.random() * (10 - 100)) + 100 })
      }
    },
    refresh() {
      this.getData()
    }
  }
}
</script>
