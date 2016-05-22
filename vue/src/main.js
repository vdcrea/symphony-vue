// vue core functions
import Vue from 'vue'
import VueRouter from 'vue-router'
import VueResource from 'vue-resource'
import _ from 'lodash'

import router from './router'
import store from './vuex/store'
// import { sync } from 'vuex-router-sync'
// sync(store, router)

// App component
import App from './App'

// Vue resource
Vue.use(VueResource)
Vue.http.options.emulateJSON = true

// Start the app
router.start({
	store,
    components: { App }
}, 'body')
