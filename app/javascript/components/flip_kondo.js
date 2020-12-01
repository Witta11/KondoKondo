const flipKondo = () => {
  const location_button = document.querySelector('.location-button')
  if (location_button) {
    location_button.addEventListener('click',() => {
      document.querySelector('.flip-card').classList.add('flip');
    });
  };
}
export { flipKondo };
