export const startLoading = makeAction('START_LOADING')
export const stopLoading = makeAction('STOP_LOADING')

export function loadState({dispatch, state}, loaded) {
    dispatch(Mutation.LOAD_STATE, loaded)
}

function makeAction (type) {
  return ({ dispatch }, ...args) => dispatch(type, ...args)
}
