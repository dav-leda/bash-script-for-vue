

export const someStore = {

  // STATE
  someState: null,

  // GETTERS
  get stateGetter() {
    return this.someState
  },

  // ACTIONS
  setState() {
    this.someState = 'new state'
  }
}