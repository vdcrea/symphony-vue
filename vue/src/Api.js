var root = 'http://sym-vue:8888/'
var api = root + 'api/'
var jit = root + 'image/'

export default {
    root: root,
    // api endpoints
    get: {
        articles: api + 'articles/',
        article: api + 'article/'
    },
    post: root + 'post/',
    // files
    workspace: root + 'workspace/',
    img: {
        path: 'uploads/images/',
        // JIT recipes
        size: {
            thumb: jit + 'thumb',
            cover: jit + 'cover'
        }
    }

}
