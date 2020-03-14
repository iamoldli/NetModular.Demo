import WebHost from 'netmodular-module-admin'
import Common from 'netmodular-module-common'
import CodeGenerator from 'netmodular-module-codegenerator'
import Quartz from 'netmodular-module-quartz'
import PersonnelFiles from 'netmodular-module-personnelfiles'
import Demo from './index'

import config from './config'

// 注入模块
WebHost.registerModule(Common)
WebHost.registerModule(CodeGenerator)
WebHost.registerModule(Quartz)
WebHost.registerModule(PersonnelFiles)
WebHost.registerModule(Demo)

// 启动
WebHost.start(config)
