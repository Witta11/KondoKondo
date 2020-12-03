import { initMapbox } from '../plugins/init_mapbox';

const flipKondo = () => {
  const location_button = document.getElementById('maplink-target')
  if (location_button) {
    location_button.addEventListener('click',() => {
      document.querySelector('.flip-card').classList.add('flip');
    });
  };
}
const reFlipKondo = () => {
  const close_button = document.querySelector('.map-close')
  if (close_button) {
    close_button.addEventListener('click',() => {
      document.querySelector('.flip-card').classList.remove('flip');
    });
  };
}



export { flipKondo, reFlipKondo };
