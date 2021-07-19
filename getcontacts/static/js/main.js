const App = {
    data(){
        return {
            message : 'Vue js 3',
            title   : 'Контакты',
            contacts : [],
            ok       : 0,
            show     : 'показать',
            btn_class    : 'fa fa-eye',
            next         : '',
            previous     : '',
            search       : '',
            search_url   : 'http://127.0.0.1:8000/contact/search/',
        }
    },
    delimiters:["||","||"],
    mounted(){
        axios.get('http://127.0.0.1:8000/contact/list/')
        .then(response => {
          this.contacts = response.data.results
          console.log(response.data)
          console.log(response.data.next)
          this.next = response.data.next
          this.previous = response.data.previous
        })
        .catch(function (error) {
          // handle error
          console.log(error);
        })
        .then(function () {
          // always executed
        });
          },
    methods:{
        showdetails(){
            if (this.ok == 0)
            {
                this.ok = 1
                this.show = 'скрыть'
                this.btn_class = 'fa fa-eye-slash'
            }
            else
            {
                this.ok = 0
                this.show = 'показать'
                this.btn_class = 'fa fa-eye'
            }
            
        },
        get_pages(url){
            axios.get(url)
            .then(response => {
              this.contacts = response.data.results              
              this.next = response.data.next
              this.previous = response.data.previous
            })
            .catch(function (error) {
              // handle error
              console.log(error);
            })
            .then(function () {
              // always executed
            });
        },
        searchcontact(){
            axios.get(this.search_url+this.search)
            .then(response => {
              console.log(response.data)
              this.contacts = response.data
            })
            .catch(function (error) {
              // handle error
              console.log(error);
            })
            .then(function () {
              // always executed
            });
        }

    }
}


const app=Vue.createApp(App)

app.mount("#contact")