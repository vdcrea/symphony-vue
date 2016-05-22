<template>
    <div>
        <div v-if="displayLoading" transition="loading"></div>
    </div>
</template>


<script>
export default {
    vuex: {
        getters: {
          isLoading: state => state.isLoading
        }
    },
    computed: {
        displayLoading() {
          return this.isLoading || false
        }
    }
}
</script>


<style lang="scss">
@import '../assets/scss-config';

@-webkit-keyframes gradientLoading {
    0%{background-position:0% 50%}
    50%{background-position:100% 51%}
    100%{background-position:0% 50%}
}
@-moz-keyframes gradientLoading {
    0%{background-position:0% 50%}
    50%{background-position:100% 51%}
    100%{background-position:0% 50%}
}
@keyframes gradientLoading {
    0%{background-position:0% 50%}
    50%{background-position:100% 51%}
    100%{background-position:0% 50%}
}

.loading-transition {
    position: absolute;
    top: 0px;
    left: 0px;
    width: 100%;
    background: linear-gradient(270deg, #ffffff, $color-active, #ffffff);
    background-size: 600% 600%;
    z-index: 1000;

    -webkit-animation: gradientLoading 2s ease infinite;
    -moz-animation: gradientLoading 2s ease infinite;
    animation: gradientLoading 2s ease infinite;

    transition: all .5s ease-in-out;
    height: 3px;
}
.loading-enter, .loading-leave {
    height: 0px;
}
</style>
