<template>
    <div id="app">
        <loading></loading>
        <router-view class="view" transition="view" transition-mode="out-in"></router-view>
    </div>
</template>


<script>
import loading from './partials/Loading.vue'
export default {
    components: {
        loading
    }
}
</script>


<style lang="scss">
@import 'assets/scss-config';

html,
body {
    height: 100%;
    margin: 0;
    padding: 0;
}

#app {
    color: $color-text;
    font-family: $font-stack;
    text-align: left;
    line-height: 30px;
    max-width: 700px;
    margin: auto;
    padding-bottom: 60px;

    h1, h2 {
        text-align: center;
        margin: 0;
        font-weight: normal;
    }
    h1 {
        padding:40px 20px 10px 20px;
    }

    a {
        display: inline-block;
        position: relative;
        color: $color-active;
        text-decoration: none;
        &:before {
            content: '';
            position: absolute;
            z-index: -1;
            left: 50%;
            right: 50%;
            width: 0;
            bottom: 0;
            background: $color-active;
    		height: 2px;
            transition: all 200ms ease-in-out;
        }
        &:hover,
        &:active,
        &:focus {
            &:before {
                left: 0;
                right: 0;
                width: auto;
            }
        }
    }
}

pre {
    background:#000;
    color:#FFF;
    font-family: monospace;
    padding:20px;
    margin: 0;
    text-align: left;
}


.view {
    // position: absolute;
    // top: 0px;
    // left: 0px;
    // right: 0px;
    // bottom: 0px;
}
.view-transition {
    transition: all .5s ease-in-out;
}
.view-enter, .view-leave {
    opacity: 0;
}

</style>
