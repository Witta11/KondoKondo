import { initMapbox } from '../plugins/init_mapbox';
import { flipKondo, reFlipKondo } from './flip_kondo';

const fetchRandomKondo = () => {
  const random_button = document.querySelector('.random-button')
  if (random_button) {
    random_button.addEventListener('click',() => {
      fetch('/kondos/random', {
        method: 'GET',
      })
        .then(response => response.text())
        .then((html) => {
          document.querySelector('.flip-card').innerHTML = html;
          initMapbox();
          flipKondo();
          reFlipKondo();
        });
     });
  };
};

export { fetchRandomKondo };
