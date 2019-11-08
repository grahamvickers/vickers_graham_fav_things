// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.u-link'),
        lightbox = document.querySelector('.lightbox');


    
    function parseUserData(sport) { //sport is the database result
        let targetDiv = document.querySelector('.lb-content'),
            targetImg = lightbox.querySelector('img');
        
        let bioContent = `
            <h1>${sport.title}<h1>
            <p id="bio">${sport.bio}<p>
            <h4>Age Started: ${sport.age}<h4>

        `;

        console.log(bioContent);

        targetDiv.innerHTML = bioContent;
        targetImg.src = sport.imgsrc;

        lightbox.classList.add('show-lb');
    }

    function getUserData(event) {
        //kill the default a tag behaviour
        event.preventDefault(); 
        // debugger;
        let imgSrc = this.previousElementSibling.getAttribute('src')
        let url = `/users/${this.getAttribute('href')}`; 

        fetch(url)
            .then(res => res.json()) //parse the json result into a plain object
            .then(data =>   {
                console.log("my database results is: ", data)

                data[0].imgsrc = imgSrc;

                parseUserData(data[0]);
            })
            .catch((err) => {
                console.log(err)
            })
    }

    userButtons.forEach(button => button.addEventListener('click', getUserData))

    lightbox.querySelector('.close').addEventListener('click', function() {
        lightbox.classList.remove('show-lb');
    });
})();