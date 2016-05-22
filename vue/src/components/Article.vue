<template>
    <div class="article">

        <brand></brand>

        <!-- article content -->
        <h1 v-text="article.title"></h1>
        <h2 v-text="dateFormat(article.date)"></h2>
        <div class="text" v-html="article.text"></div>

        <!-- form -->
        <form @submit.prevent="postComment">
            <textarea v-model="comment.fields.text"
                placeholder="Leave a comment"></textarea>
            <input type="submit" value="Submit" />
        </form>

        <!-- comments -->
        <div class="comment" v-for="comment in article.comments">
            <span v-html="comment.text"></span>
            <small v-text="dateFormat(comment.date)"></small>
        </div>

        <!-- pagination -->
        <pagination
            :current-page="pagination.currentPage"
            :total-pages="pagination.totalPages"
            :callback="getArticle">
        </pagination>

    </div>
</template>

<script>
// api endpoints
import api from '../Api'

// mixins
import mixinLoading from '../mixins/loading'
import mixinPagination from '../mixins/pagination'
import mixinDate from '../mixins/date'

// Components
import brand from '../partials/Brand'

export default {
    data () {
        return {
            article: {
                title: '',
                id: '',
                handle: '',
                date: '',
                text: '',
                comments: []
            },
            comment: {
                MAX_FILE_SIZE: 5242880,
                fields: {
                    text: '',
                    article: ''
                },
                action: {
                    comment:''
                }
            }
        }
    },
    mixins: [mixinLoading, mixinPagination, mixinDate],
    components: {
        brand
    },
    route: {
        // route data hook to retrieve article every time route changes
        data () {
            this.getArticle(this.pagination.currentPage)
        }
    },
    methods: {
        // method to get article from Symphony API
        getArticle(page) {
            this.$http({
                url: api.get.article + this.$route.params.article + '/' + page + '/',
                method: 'GET',
                beforeSend: this.startLoading()
            }).then(function (res) {
                this.article = res.data.article
                this.comment.fields.article = res.data.article.id
                this.pagination = res.data.pagination
                this.stopLoading()
            }, function (err) {
                console.log(err)
                this.stopLoading()
            });
        },
        // method to send post request to Symphony API
        postComment() {
            this.$http({
                url: api.post,
                data: this.comment,
                method: 'POST',
                beforeSend: this.startLoading()
            }).then(function (res) {
                this.comment.fields.text = ''
                this.getArticle(1)
                this.stopLoading()
            }, function (err) {
                console.log(err)
                this.stopLoading()
            });
        }
    }
}
</script>


<style lang="scss">
@import '../assets/scss-config';

.article {
    form {
        position: relative;
        display: block;
        padding: 20px;
        padding-top: 0px;
        textarea {
            position: relative;
            border: none;
            background: $color-active-light;
            display: block;
            width: 96%;
            padding: 2%;
            height: 50px;
            font-size: 12px;
            font-family: $font-stack;
            &::placeholder {
                color: $color-active;
            }
        }
        input {
            background: $color-active;
            color: #fff;
            border: none;
            line-height: 30px;
            padding: 0px 20px;
            margin-top: 20px;
            border-radius: 3px;
            font-size: 12px;
            font-family: $font-stack;
            text-transform: uppercase;
            letter-spacing: 3px;
            cursor: pointer;
        }

    }
    .text {
        padding: 20px;
        p {
            text-align: justify;
        }
    }
    .comment {
        padding: 10px 20px 20px 20px;
        p, small {
            color: $color-active;
            margin: 0
        }
    }
}
</style>
