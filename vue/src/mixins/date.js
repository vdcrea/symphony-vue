// dependency
import moment from 'moment'

export default {
    methods: {
        // method to format iso date in human language
        dateFormat(date) {
            return moment(date).locale('fr').format('Do MMMM YYYY')
        }
    }
}
