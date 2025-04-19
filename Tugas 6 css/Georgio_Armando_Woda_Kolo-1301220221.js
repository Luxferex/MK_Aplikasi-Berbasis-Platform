// ubah alignment text (center or right )

let alignButton = document.getElementById('alignButton');
let title = document.querySelector('.title');

alignButton.addEventListener('click', function () {
  if (title.style.textAlign === 'center') {
    title.style.textAlign = 'right';
  } else {
    title.style.textAlign = 'center';
  }
});

// ubah warna background (green or red)
let colorButton = document.getElementById('colorButton');
let box = document.querySelector('.service-box');

colorButton.addEventListener('click', function () {
  if (box.style.backgroundColor === 'rgb(0, 200, 83)') {
    box.style.backgroundColor = 'red'; // ganti warna
  } else {
    box.style.backgroundColor = '#00c853'; // warna asli
  }
});
