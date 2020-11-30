const flipKondoCard = () => {
  const card = document.querySelector('#card')
  if (card) {
    card.addEventListener('click',() => {
      card.flip();
    });
  };
}

export { flipKondoCard };
