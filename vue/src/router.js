import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

// Components
import Blog from './components/Blog'
import Article from './components/Article'
import Error from './components/404'

// Router options
var router = new VueRouter({
	history: true,
	saveScrollPosition: true,
	linkActiveClass: 'active'
})

// Set up routing and match routes to components
router.map({
    '/': {
        name:'Blog',
        component: Blog
    },
	'/blog': {
        name:'Blog',
        component: Blog,
		// subRoutes: {
		// 	'/:article': {
		// 		name:'Article',
		// 		component: Article
		// 	}
    	// }
	},
	'/blog/:article': {
		name:'Article',
		component: Article
	},
    '*': {
        component: Error
    }
})

export default router
