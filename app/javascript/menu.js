document.addEventListener("DOMContentLoaded", () => {
    const sidebar = document.getElementById("sidebar");
    const mainContent = document.getElementById("main-content");
    const openBtn = document.getElementById("menu-open");
    const closeBtn = document.getElementById("menu-close");
    const overlay = document.getElementById("menu-overlay");

    function openMenu() {
      sidebar.classList.remove("-translate-x-full");
      overlay.classList.remove("hidden");
      mainContent.classList.add("ml-64");
    }

    function closeMenu() {
      sidebar.classList.add("-translate-x-full");
      overlay.classList.add("hidden");
      mainContent.classList.remove("ml-64");
    }

    openBtn.addEventListener("click", openMenu);
    closeBtn.addEventListener("click", closeMenu);
    overlay.addEventListener("click", closeMenu);
});


