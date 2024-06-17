// This file can include any specific JavaScript you need for your HomeController
// document.addEventListener('turbolinks:load', () => {
//   const form = document.querySelector('form');

//   form.addEventListener('ajax:success', () => {
//     alert('File uploaded successfully');
//   });

//   form.addEventListener('ajax:error', () => {
//     alert('File upload failed');
//   });
// });

// document.addEventListener('DOMContentLoaded', () => {
//   const form = document.getElementById('file-upload-form');

//   form.addEventListener('submit', (event) => {
//     event.preventDefault(); // Prevent the default form submission
//     const formData = new FormData(form);

//     fetch(form.action, {
//       method: 'POST',
//       body: formData,
//       headers: {
//         'Accept': 'application/javascript'
//       }
//     })
//     .then(response => response.text())
//     .then(script => {
//       eval(script);
//     })
//     .catch(error => {
//       console.error('Error:', error);
//     });
//   });
// });

