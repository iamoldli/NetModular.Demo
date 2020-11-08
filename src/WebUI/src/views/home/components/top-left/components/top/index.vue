<template>
  <nm-box v-bind="box">
    <template v-slot:title>
      <div>基本信息</div>
    </template>

    <div class="nm-pmr-home-admin-top-left-top nm-p-5">
      <section class="item">
        <nm-box-small label="企业" :value="model.enterpriseCount" unit="家" icon="enterprise" more @more="$router.push({ name: 'powermonitor_enterprisemonitoring' })" />
      </section>
      <section class="item">
        <nm-box-small label="生产线" :value="model.productLineCount" unit="条" icon="channel" bg-color="info" />
      </section>
      <section class="item">
        <nm-box-small label="排口" :value="model.dischargePortCount" unit="个" icon="pollute" bg-color="warning" />
      </section>
      <section class="item">
        <nm-box-small label="产污监测点" :value="model.monitorPolluteCount" unit="处" icon="pollute" bg-color="danger" />
      </section>
      <section class="item">
        <nm-box-small label="治污监测点" :value="model.monitorDisposalCount" unit="处" icon="disposal" bg-color="primary" />
      </section>
    </div>
  </nm-box>
</template>
<script>
export default {
  data() {
    return {
      model: {
        enterpriseCount: 33,
        productLineCount: 120,
        dischargePortCount: 200,
        monitorPolluteCount: 321,
        monitorDisposalCount: 433
      },
      box: {
        icon: 'home',
        header: true,
        page: true,
        titleBold: true,
        noPadding: true,
        refresh: true,
        refreshAction: this.query
      }
    }
  }
}
</script>
<style lang="scss">
.nm-pmr-home-admin-top-left-top {
  .item {
    padding-right: 7px;
    display: inline-block;
    width: 20%;
    box-sizing: border-box;
  }
}
</style>
