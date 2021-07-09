window.addEventListener('load', () => {
    const form = document.querySelector("#new-article")

    form.addEventListener('ajax:created', (event) => {
        console.log('created')
    })

    form.addEventListener('ajax:success', (event) => {
        console.log('submited article')
    })
})