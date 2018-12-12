function initUpdateBookbarOnScroll() {
  const bookbar = document.querySelector('.book-bar-match');
  if (bookbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 100) {
        bookbar.style.display = "flex";
      } else {
        bookbar.style.display = "none";      }
    });
  }
}

export { initUpdateBookbarOnScroll };
