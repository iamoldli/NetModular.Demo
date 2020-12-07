<template>
  <div class="nm-toolbar-item">
    <el-badge :value="5">
      <nm-button type="text" class="nm-toolbar-button bell" icon="bell" @click="visible = !visible" />
    </el-badge>
    <nm-dialog v-bind="dialog" class="nm-ad" :visible.sync="visible">
      <div class="nm-ad-wrapper">
        <nm-icon class="nm-size-100" name="work" />
        <h1 class="nm-size-30">广告位招租~</h1>
        <h1 class="nm-size-30">QQ：860996606</h1>
      </div>
    </nm-dialog>
  </div>
</template>
<script>
export default {
  data() {
    return {
      visible: false,
      dialog: {
        title: '找工作！',
        icon: 'gift',
        width: '900px',
        height: '90%',
        fullscreen: true
      }
    }
  },
  created() {
    setTimeout(() => {
      this.visible = true
    }, 1000)
  }
}
</script>
<style lang="scss">
.nm-toolbar-item {
  .el-badge__content {
    top: 7px;
    right: 17px;
    height: 14px;
    line-height: 14px;
    font-size: 11px;
  }
}
.nm-toolbar-button.bell {
  .nm-icon {
    animation: ringing 2s infinite ease 1s;
  }
}
.nm-ad {
  .nm-dialog-main {
    padding-bottom: 20px;
  }
}
.nm-ad-wrapper {
  padding: 20px;
  text-align: center;
  h2 {
    margin: 15px 0;
    font-size: 20px;
  }
}
@-moz-keyframes ringing {
  0% {
    -moz-transform: rotate(-15deg);
  }

  2% {
    -moz-transform: rotate(15deg);
  }

  12%,
  4% {
    -moz-transform: rotate(-18deg);
  }

  14%,
  6% {
    -moz-transform: rotate(18deg);
  }

  8% {
    -moz-transform: rotate(-22deg);
  }

  10% {
    -moz-transform: rotate(22deg);
  }

  16% {
    -moz-transform: rotate(-12deg);
  }

  18% {
    -moz-transform: rotate(12deg);
  }

  20% {
    -moz-transform: rotate(0);
  }
}

@-webkit-keyframes ringing {
  0% {
    -webkit-transform: rotate(-15deg);
  }

  2% {
    -webkit-transform: rotate(15deg);
  }

  12%,
  4% {
    -webkit-transform: rotate(-18deg);
  }

  14%,
  6% {
    -webkit-transform: rotate(18deg);
  }

  8% {
    -webkit-transform: rotate(-22deg);
  }

  10% {
    -webkit-transform: rotate(22deg);
  }

  16% {
    -webkit-transform: rotate(-12deg);
  }

  18% {
    -webkit-transform: rotate(12deg);
  }

  20% {
    -webkit-transform: rotate(0);
  }
}

@-ms-keyframes ringing {
  0% {
    -ms-transform: rotate(-15deg);
  }

  2% {
    -ms-transform: rotate(15deg);
  }

  12%,
  4% {
    -ms-transform: rotate(-18deg);
  }

  14%,
  6% {
    -ms-transform: rotate(18deg);
  }

  8% {
    -ms-transform: rotate(-22deg);
  }

  10% {
    -ms-transform: rotate(22deg);
  }

  16% {
    -ms-transform: rotate(-12deg);
  }

  18% {
    -ms-transform: rotate(12deg);
  }

  20% {
    -ms-transform: rotate(0);
  }
}

@keyframes ringing {
  0% {
    transform: rotate(-15deg);
  }

  2% {
    transform: rotate(15deg);
  }

  12%,
  4% {
    transform: rotate(-18deg);
  }

  14%,
  6% {
    transform: rotate(18deg);
  }

  8% {
    transform: rotate(-22deg);
  }

  10% {
    transform: rotate(22deg);
  }

  16% {
    transform: rotate(-12deg);
  }

  18% {
    transform: rotate(12deg);
  }

  20% {
    transform: rotate(0);
  }
}
</style>
