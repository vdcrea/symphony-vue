// component
import pagination from '../partials/Pagination.vue'

export default {
    data () {
        return {
            pagination: {
                totalEntries: 0,
                totalPages: 0,
                entriesPerPage: 0,
                currentPage: 1
            }
        }
    },
    components: {
        pagination
    }
}
