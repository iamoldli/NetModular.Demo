<template>
  <nm-container scrollbar>
    <section class="nm-pmr-home">
      <nm-box-row height="65%">
        <nm-box-col :span="15">
          <top-left />
        </nm-box-col>
        <nm-box-col :span="9">
          <top-right />
        </nm-box-col>
      </nm-box-row>
      <nm-box-row height="35%" class="nm-m-b-0">
        <nm-box-col :span="15">
          <bottom-left />
        </nm-box-col>
        <nm-box-col :span="9">
          <bottom-right />
        </nm-box-col>
      </nm-box-row>
    </section>
  </nm-container>
</template>
<script>
import TopLeft from './components/top-left'
import TopRight from './components/top-right'
import BottomLeft from './components/bottom-left'
import BottomRight from './components/bottom-right'
export default {
  components: {
    TopLeft,
    TopRight,
    BottomLeft,
    BottomRight
  },
  data() {
    return {
      task: null,
      minute: 10
    }
  }
}
</script>
<style lang="scss">
.nm-pmr-home {
  height: 100%;
  min-height: 800px;

  .nm-pmr-home-card {
    height: 60px;
    line-height: 60px;
    span {
      font-size: 25px;
      font-weight: 600;
    }
  }
}
</style>
