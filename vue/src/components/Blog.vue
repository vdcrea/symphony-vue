<template>
    <div class="articles">

        <brand></brand>

        <!-- <bulma-button></bulma-button> -->

        <h1>Symphony Vue</h1>
        <h2>VueJs ensemble backed by a Symphony CMS API</h2>
        <br>

        <ul>
            <li v-for="article in articles"
                transition="item"
                stagger="200">
                <a v-link="{ name: 'Article', params: { article: article.handle } }">
                    <h2 v-text="article.title"></h2>
                    <span v-text="dateFormat(article.date)"></span>
                </a>
            </li>
        </ul>

        <pagination
            :current-page="pagination.currentPage"
            :total-pages="pagination.totalPages"
            :callback="getArticles">
        </pagination>

    </div>
</template>


<script>
// Api endpoints
import api from '../Api'

// Mixins
import mixinLoading from '../mixins/loading'
import mixinPagination from '../mixins/pagination'
import mixinDate from '../mixins/date'

// Components
import brand from '../partials/Brand'
// import bulmaButton from '../bulma/elements/button'

export default {
    data () {
        return {
            articles: []
        }
    },
    mixins: [mixinLoading, mixinPagination, mixinDate],
    components: {
        brand
    },
    methods: {
        getArticles(page) {
            this.$http({
                url: api.get.articles + '/' + page + '/',
                method: 'GET',
                beforeSend: this.startLoading()
            }).then(function (res) {
                this.articles = res.data.articles
                this.pagination = res.data.pagination
                this.stopLoading()
            }, function (err) {
                console.log(err)
                this.stopLoading()
            });
        }
    },
    ready () {
        this.getArticles(this.pagination.currentPage)
    }
}
</script>


<style lang="scss">

.articles {
    ul, li, h2 {
        margin: 0;
        padding: 0;
    }
    ul {
        text-align: center;
        li {
            display: block;
            margin: 20px;
        }
    }
}


.item-transition {
  opacity: 1;
  transition: all .5s ease-in-out
}
.item-leave {
    transition: all 0s
}
.item-enter, .item-leave {
  opacity: 0;
  transform: translateY(50px);
}
</style>
