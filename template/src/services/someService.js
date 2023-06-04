
export const fetchService = {

  data: null,
  
  async getData(url) {
    try {
      this.data = await (await fetch(url)).json()
    } catch (error) {
      console.log(error)
    }
  }
  
}

