<template>
    <a class='button' :class="bulmaStyle">
        <span v-if="icon" class="icon">
            <i class="fa" :class="icon"></i>
        </span>
        <span v-if="text" v-text="text"></span>
    </a>
</template>

<script>
export default {
    props: {
        text: {
            type: String
        },
        color: {
            type: String // is-primary, is-info, is-success, is-warning, is-danger, is-link
        },
        size: {
            type: String // is-small, is-medium, is-large
        },
        style: {
            type: String // is-outlined, is-inverted
        },
        state: {
            type: String // is-loading, is-disabled
        },
        icon: {
            type: String // font-awesome icon name
        }
    },
    computed: {
        bulmaStyle() {
            var bulmaStyle = {}
            if (this.color) {
                var color = this.color
                bulmaStyle.color = true
            }
            if (this.size) {
                var size = this.size
                bulmaStyle.size = true
            }
            return this.color + ' ' + this.size + ' ' + this.style + ' ' + this.state
        }
    }
}
</script>

<style lang="sass">
@import "../utilities/utilities"

=button-small
  border-radius: 2px
  font-size: 11px
  height: 24px
  line-height: 16px
  padding-left: 6px
  padding-right: 6px
=button-medium
  font-size: 18px
  height: 40px
  padding-left: 14px
  padding-right: 14px
=button-large
  font-size: 22px
  height: 48px
  padding-left: 20px
  padding-right: 20px

.button
  +control
  +unselectable
  justify-content: center
  padding-left: 10px
  padding-right: 10px
  text-align: center
  white-space: nowrap
  strong
    color: inherit
  small
    display: block
    font-size: $size-small
    line-height: 1
    margin-top: 5px
  .icon,
  .tag
    &:first-child
      margin-left: -2px
      margin-right: 4px
    &:last-child
      margin-left: 4px
      margin-right: -2px
  &:hover
    color: $control-hover
  &:active
    box-shadow: inset 0 1px 2px rgba($black, 0.2)
  // Colors
  @each $name, $pair in $colors
    $color: nth($pair, 1)
    $color-invert: nth($pair, 2)
    &.is-#{$name}
      background: $color
      border-color: transparent
      color: $color-invert
      &:hover,
      &:focus
        background: darken($color, 10%)
        border-color: transparent
        color: $color-invert
      &:active
        border-color: transparent
      &.is-inverted
        background: $color-invert
        color: $color
        &:hover
          background: darken($color-invert, 5%)
      &.is-loading
        &:after
          border-color: transparent transparent $color-invert $color-invert !important
      &.is-outlined
        background: transparent
        border-color: $color
        color: $color
        &:hover,
        &:focus
          background: $color
          border-color: $color
          color: $color-invert
  &.is-link
    background: transparent
    border-color: transparent
    color: $text
    text-decoration: underline
    &:hover,
    &:focus
      background: $border
      color: $text-strong
  // Sizes
  &.is-small
    +button-small
  &.is-medium
    +button-medium
  &.is-large
    +button-large
  // Modifiers
  &[disabled],
  &.is-disabled
    opacity: 0.5
  &.is-flexible
    height: auto
  &.is-fullwidth
    display: block
    width: 100%
  &.is-loading
    color: transparent !important
    pointer-events: none
    &:after
      @extend .loader
      +center(16px)
      position: absolute !important
</style>
