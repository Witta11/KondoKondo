const fetchRandomKondo = () => {
  const random_button = document.querySelector('.random-button')
  if (random_button) {
    random_button.addEventListener('click',() => {
      fetch('/kondos/random', {
      method: 'GET',
    }).then(response => response.text())
        .then((html) => {
          document.querySelector('.card-wrapper').innerHTML = html;
          const location_button = document.getElementById('maplink-target')
          if (location_button) {
            location_button.addEventListener('click',() => {
              document.querySelector('.flip-card').classList.add('flip');
            });
          };
      });
    });
  };
}

export { fetchRandomKondo };
