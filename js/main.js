// import fetchData here later

import { fetchData } from "./components/fetchData.js";

(() => {
    let mini_vue = new Vue({

        data: {
            error: '', // If theres an error this will populated - otherwise it will not
            clickedCar: '',
            clickedMiniVideo: '',
            miniCars: [],
            videoPlay: true,
            lightboxShow: false,
            clickedVideo: '',
        },

        mounted: function() {
            fetchData("./includes/index.php").then(data => this.updateCars(data)).catch(err => this.error = err);
        },
        
        methods: {
            toggleVid() {
                let vid = this.$refs.vid;
                if (this.clickedVideo) {
                    vid.pause();
                    this.clickedVideo = false

                } else {
                    vid.play();
                    this.clickedVideo = true
                }
            },

            // updates cars with the new whips

            updateCars(cars) {
                this.miniCars = cars;
                if (this.clickedVideo == '') {
                    this.clickedVideo = cars[0];
                }
            },

            // changing the vid using queries 
            changeVid(id) {
                if (this.miniCars[id] && this.miniCars[id].car_id == id) {
                    this.clickedVideo = this.miniCars[id];

                } else {
                    fetchData(`./includes/index.php?id=${id}`).then(data => this.clickedVideo = data[0]).catch(err => this.error = err);
                }
            },
            
        }


    }).$mount("#app"); 
})();