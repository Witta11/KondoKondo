const hideShuffle = () => {
  const all_tab = document.getElementById('pills-all-tab')
  if (all_tab) {
    all_tab.addEventListener('click',() => {
      document.querySelector('.random-button').style.visibility="hidden";
    });
  };
}

const showShuffle = () => {
  const shuffle_tab = document.getElementById('pills-shuffle-tab')
  if (shuffle_tab) {
    shuffle_tab.addEventListener('click',() => {
      document.querySelector('.random-button').style.visibility="visible";
      document.querySelector('.hide-shuffle').style.visibility="visible";
    });
  };
}

export { hideShuffle };
export { showShuffle };
