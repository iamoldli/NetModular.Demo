<template>
  <nm-box v-bind="box">
    <template v-slot:toolbar-before>
      实时总功率:
      <span class="nm-text-primary">200KW</span>
      &nbsp;&nbsp;&nbsp;&nbsp; 今日累计用电量:
      <span class="nm-text-primary">200000KW</span>
      &nbsp;&nbsp;
    </template>
    <el-table height="100%" :data="data" :span-method="objectSpanMethod" border stripe>
      <el-table-column prop="moduleName" label="模块"></el-table-column>
      <el-table-column prop="typeName" label="类型"></el-table-column>
      <el-table-column prop="name" label="名称"></el-table-column>
      <el-table-column prop="statusName" label="状态">
        <template slot-scope="scope">
          <div class="status" :class="'status-' + scope.row.status"></div>
          <span>{{ scope.row.statusName }}</span>
        </template>
      </el-table-column>
      <el-table-column prop="amount3" label="实时功率(KW)"></el-table-column>
      <el-table-column prop="amount4" label="今日运行时长"></el-table-column>
      <el-table-column prop="amount5" label="今日用电量(kwh)"></el-table-column>
    </el-table>
  </nm-box>
</template>
<script>
export default {
  data() {
    return {
      box: {
        title: '各监控设施具体情况',
        icon: 'list',
        header: true,
        page: true,
        noPadding: true,
        titleBold: true
      },
      tableData: [
        {
          moduleName: '模块1',
          typeName: '生产设施',
          name: '产污1',
          statusName: '运行中',
          status: 0,
          amount3: 10,
          amount4: 10,
          amount5: 10
        },
        {
          moduleName: '模块1',
          typeName: '生产设施',
          name: '产污2',
          statusName: '运行中',
          status: 0,
          amount3: 12,
          amount4: 10,
          amount5: 10
        },
        {
          moduleName: '模块1',
          typeName: '生产设施',
          name: '产污3',
          statusName: '运行中',
          status: 0,
          amount3: 9,
          amount4: 10,
          amount5: 10
        },
        {
          moduleName: '模块1',
          typeName: '治污设施',
          name: '治污1',
          statusName: '未运行',
          status: 1,
          amount3: 9,
          amount4: 10,
          amount5: 10
        },
        {
          moduleName: '模块1',
          typeName: '治污设施',
          name: '治污2',
          statusName: '运行中',
          status: 0,
          amount3: 9,
          amount4: 10,
          amount5: 10
        },
        {
          moduleName: '模块2',
          typeName: '生产设施',
          name: '产污1',
          statusName: '运行中',
          status: 0,
          amount3: 17,
          amount4: 10,
          amount5: 10
        },
        {
          moduleName: '模块2',
          typeName: '治污设施',
          name: '治污1',
          statusName: '异常',
          status: 2,
          amount3: 15,
          amount4: 10,
          amount5: 10
        }
      ],
      calcFiled: {
        moduleName: [],
        type: []
      }
    }
  },
  computed: {
    data() {
      this.tableData.forEach(e => {
        e.mergCell = {}
        this.moduleMerging(e)
        this.typeMerging(e)
      })
      return this.tableData
    }
  },
  created() {
    this.getData()
  },
  methods: {
    objectSpanMethod({ row, column }) {
      return row.mergCell[column.property]
    },
    getData() {},
    refresh() {
      this.getData()
    },
    moduleMerging(row) {
      if (!this.calcFiled.moduleName.includes(row.moduleName)) {
        this.calcFiled.moduleName.push(row.moduleName)
        let temp = this.tableData.filter(z => z.moduleName === row.moduleName)
        row.mergCell.moduleName = {
          rowspan: temp.length,
          colspan: 1
        }
      } else {
        row.mergCell.moduleName = {
          rowspan: 0,
          colspan: 0
        }
      }
    },
    typeMerging(row) {
      let key = row.moduleName + '_' + row.typeName
      if (!this.calcFiled.type.includes(key)) {
        this.calcFiled.type.push(key)
        let temp = this.tableData.filter(z => z.moduleName === row.moduleName && z.typeName === row.typeName)
        row.mergCell.typeName = {
          rowspan: temp.length,
          colspan: 1
        }
      } else {
        row.mergCell.typeName = {
          moduleName: {
            rowspan: 0,
            colspan: 0
          }
        }
      }
    }
  }
}
</script>
<style lang="scss" scope>
.dashboard-monitor-detail-header {
  border-top: 1px;
  border-left: 1px;
  border-right: 1px;
  border-style: solid;
  border-color: #ddd;
}
.status {
  position: relative;
  display: inline-block;
  height: 5px;
  width: 5px;
  border-radius: 50%;
  margin-right: 10px;
  top: -2px;
  &-0 {
    background-color: #67c23a;
  }
  &-1 {
    background-color: #e6a23c;
  }
  &-2 {
    background-color: #f56c6c;
  }
}
</style>
