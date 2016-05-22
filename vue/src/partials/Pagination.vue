<template>
    <ul v-show="totalPages > 1" class="pagination">
        <li :class="{ disabled: prevPage == 0 }">
            <a @click.prevent="changePage(prevPage);" href="#prev" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span></a>
        </li><li v-for="page in totalPages"
            :class="{ active: currentPage == $index + 1 }">
            <a @click.prevent="changePage($index + 1);" href="#{{ $index + 1 }}">{{ $index + 1 }}</a>
        </li><li :class="{ disabled: nextPage > totalPages }">
            <a @click.prevent="changePage(nextPage);" href="#next" aria-label="Next">
                <span aria-hidden="true">&raquo;</span></a>
        </li>
    </ul>
</template>

<script>
export default {
    props: {
        currentPage: {
            type: Number,
            required: true
        },
        totalPages: {
            type: Number,
            required: true
        },
        callback: {
            type: Function,
            required: true
        },
        totalEntries: Number,
        entriesPerPage: Number
    },
    computed: {
        prevPage() {
            return this.currentPage - 1
        },
        nextPage() {
            return this.currentPage + 1
        }
    },
    methods: {
        changePage(page) {
            this.callback(page)
        }
    }
}
</script>


<style lang="scss">
@import '../assets/scss-config';

#app {
    ul.pagination {
        position: relative;
        margin: 0;
        padding: 0 20px 20px 20px;
        display: block;
        list-style: none;
        z-index: 10;
        min-height: 32px;
        background-color: white;
        text-align: center;

        li {
            display: inline-block;
            margin: 0;
            a {
                margin: 0;
                padding: 0 12px;
                display: block;
                float: left;
                line-height: 30px;
                border: 1px solid $color-active;
                margin-right: -1px;
                text-decoration: none;
                font-family: sans-serif;
                font-size: 12px;
                color: $color-active;
                &:hover {
                    background-color: $color-active;
                    color: #fff;
                }
                &:before {
                    display: none;
                }
            }
            &:first-child {
                a {
                    border-top-left-radius: 3px;
                    border-bottom-left-radius: 3px;
                }
            }
            &:last-child {
                a {
                    border-top-right-radius: 3px;
                    border-bottom-right-radius: 3px;
                }
            }
            &.active {
                a {
                    background-color: $color-active;
                    color: #fff;
                }
            }
            &.disabled {
                a {
                    pointer-events: none;
                    /* Disables the button completely. Better than just cursor: default; */
                    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=60);
                    opacity: 0.6;
                    &:hover {
                        background: none;
                        color: $color-active;
                    }
                }
            }
        }
    }
}
</style>
