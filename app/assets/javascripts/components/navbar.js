function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-trybes');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 30) {
        navbar.classList.add('navbar-trybes-opaque');
      } else {
        navbar.classList.remove('navbar-trybes-opaque');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
