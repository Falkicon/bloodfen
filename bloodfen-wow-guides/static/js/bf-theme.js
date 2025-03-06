// Bloodfen Theme JavaScript

document.addEventListener('DOMContentLoaded', function () {
  // Cache DOM elements
  const mobileMenuToggle = document.querySelector('.bf-mobile-menu-toggle');
  const mobileMenu = document.querySelector('.bf-mobile-menu');
  const backToTopButton = document.querySelector('.bf-back-to-top');
  const guideCards = document.querySelectorAll('.bf-guide-card');
  const accordions = document.querySelectorAll('.bf-accordion');
  const tabButtons = document.querySelectorAll('.bf-tab-button');
  const internalLinks = document.querySelectorAll('a[href^="#"]:not([href="#"])');
  const toggleButton = document.getElementById('dark-mode-toggle');
  const html = document.documentElement;

  // Mobile menu toggle
  if (mobileMenuToggle && mobileMenu) {
    mobileMenuToggle.addEventListener('click', function () {
      const isExpanded = mobileMenuToggle.getAttribute('aria-expanded') === 'true';

      // Toggle menu state
      mobileMenuToggle.classList.toggle('active');
      mobileMenu.classList.toggle('hidden');
      document.body.classList.toggle('overflow-hidden');

      // Update ARIA attributes
      mobileMenuToggle.setAttribute('aria-expanded', !isExpanded);
      mobileMenu.setAttribute('aria-hidden', isExpanded);

      // If menu is open, trap focus within it
      if (!isExpanded) {
        // Set focus to the first focusable element in the menu
        setTimeout(() => {
          const firstFocusableElement = mobileMenu.querySelector('a, button');
          if (firstFocusableElement) {
            firstFocusableElement.focus();
          }
        }, 100);
      }
    });

    // Close mobile menu on ESC key
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape' && mobileMenuToggle.getAttribute('aria-expanded') === 'true') {
        mobileMenuToggle.click();
        mobileMenuToggle.focus(); // Return focus to the toggle button
      }
    });
  }

  // Back to top button
  if (backToTopButton) {
    // Throttle scroll event for better performance
    let lastScrollTop = 0;
    let ticking = false;

    window.addEventListener('scroll', function () {
      lastScrollTop = window.pageYOffset;

      if (!ticking) {
        window.requestAnimationFrame(function () {
          if (lastScrollTop > 300) {
            backToTopButton.classList.add('visible');
            backToTopButton.setAttribute('aria-hidden', 'false');
            backToTopButton.setAttribute('tabindex', '0');
          } else {
            backToTopButton.classList.remove('visible');
            backToTopButton.setAttribute('aria-hidden', 'true');
            backToTopButton.setAttribute('tabindex', '-1');
          }
          ticking = false;
        });

        ticking = true;
      }
    });

    backToTopButton.addEventListener('click', function (e) {
      e.preventDefault();
      window.scrollTo({
        top: 0,
        behavior: 'smooth'
      });

      // Set focus to the main content after scrolling
      setTimeout(() => {
        const mainContent = document.getElementById('main-content');
        if (mainContent) {
          mainContent.setAttribute('tabindex', '-1');
          mainContent.focus();
          mainContent.removeAttribute('tabindex');
        }
      }, 500);
    });

    // Allow keyboard activation of back to top button
    backToTopButton.addEventListener('keydown', function (e) {
      if (e.key === 'Enter' || e.key === ' ') {
        e.preventDefault();
        this.click();
      }
    });
  }

  // Guide card hover effects
  if (guideCards.length > 0) {
    guideCards.forEach(card => {
      const arrow = card.querySelector('.arrow');
      const cardLink = card.querySelector('a');

      if (arrow) {
        // Mouse hover effects
        card.addEventListener('mouseenter', function () {
          arrow.style.transform = 'translateX(5px)';
        });

        card.addEventListener('mouseleave', function () {
          arrow.style.transform = 'translateX(0)';
        });

        // Keyboard focus effects
        if (cardLink) {
          cardLink.addEventListener('focus', function () {
            arrow.style.transform = 'translateX(5px)';
          });

          cardLink.addEventListener('blur', function () {
            arrow.style.transform = 'translateX(0)';
          });
        }
      }
    });
  }

  // Accordion functionality
  if (accordions.length > 0) {
    accordions.forEach((accordion, index) => {
      const header = accordion.querySelector('.bf-accordion-header');
      const content = accordion.querySelector('.bf-accordion-content');
      const accordionId = `accordion-${index}`;
      const contentId = `accordion-content-${index}`;

      if (header && content) {
        // Add ARIA attributes
        header.setAttribute('id', accordionId);
        header.setAttribute('aria-expanded', 'false');
        header.setAttribute('aria-controls', contentId);
        header.setAttribute('role', 'button');
        header.setAttribute('tabindex', '0');

        content.setAttribute('id', contentId);
        content.setAttribute('role', 'region');
        content.setAttribute('aria-labelledby', accordionId);
        content.setAttribute('aria-hidden', 'true');

        // Click event
        header.addEventListener('click', function () {
          const isExpanded = header.getAttribute('aria-expanded') === 'true';

          accordion.classList.toggle('active');
          header.setAttribute('aria-expanded', !isExpanded);
          content.setAttribute('aria-hidden', isExpanded);
        });

        // Keyboard support
        header.addEventListener('keydown', function (e) {
          if (e.key === 'Enter' || e.key === ' ') {
            e.preventDefault();
            this.click();
          }
        });
      }
    });
  }

  // Tab functionality
  if (tabButtons.length > 0) {
    const tabsContainers = document.querySelectorAll('.bf-tabs');

    tabsContainers.forEach((tabContainer, containerIndex) => {
      const buttons = tabContainer.querySelectorAll('.bf-tab-button');
      const contents = tabContainer.querySelectorAll('.bf-tab-content');

      // Set up ARIA attributes
      const tablistId = `tablist-${containerIndex}`;
      const tablist = tabContainer.querySelector('.bf-tabs-nav');

      if (tablist) {
        tablist.setAttribute('role', 'tablist');
        tablist.setAttribute('id', tablistId);

        buttons.forEach((button, index) => {
          const tabId = button.getAttribute('data-tab');
          const buttonId = `tab-${containerIndex}-${index}`;
          const panelId = `panel-${containerIndex}-${index}`;

          // Set button attributes
          button.setAttribute('role', 'tab');
          button.setAttribute('id', buttonId);
          button.setAttribute('aria-selected', 'false');
          button.setAttribute('aria-controls', panelId);
          button.setAttribute('tabindex', '-1');

          // Find corresponding panel
          const panel = tabContainer.querySelector(`.bf-tab-content[data-tab="${tabId}"]`);
          if (panel) {
            panel.setAttribute('role', 'tabpanel');
            panel.setAttribute('id', panelId);
            panel.setAttribute('aria-labelledby', buttonId);
            panel.setAttribute('tabindex', '0');
            panel.setAttribute('aria-hidden', 'true');
          }

          // Click event
          button.addEventListener('click', function () {
            // Remove active class from all buttons and content
            buttons.forEach(btn => {
              btn.classList.remove('active');
              btn.setAttribute('aria-selected', 'false');
              btn.setAttribute('tabindex', '-1');
            });

            contents.forEach(content => {
              content.classList.remove('active');
              content.setAttribute('aria-hidden', 'true');
            });

            // Add active class to clicked button and corresponding content
            this.classList.add('active');
            this.setAttribute('aria-selected', 'true');
            this.setAttribute('tabindex', '0');

            const tabContent = tabContainer.querySelector(`.bf-tab-content[data-tab="${tabId}"]`);
            if (tabContent) {
              tabContent.classList.add('active');
              tabContent.setAttribute('aria-hidden', 'false');
            }
          });

          // Keyboard navigation
          button.addEventListener('keydown', function (e) {
            let targetButton = null;

            switch (e.key) {
              case 'ArrowRight':
                e.preventDefault();
                targetButton = this.nextElementSibling || buttons[0];
                break;
              case 'ArrowLeft':
                e.preventDefault();
                targetButton = this.previousElementSibling || buttons[buttons.length - 1];
                break;
              case 'Home':
                e.preventDefault();
                targetButton = buttons[0];
                break;
              case 'End':
                e.preventDefault();
                targetButton = buttons[buttons.length - 1];
                break;
            }

            if (targetButton) {
              targetButton.click();
              targetButton.focus();
            }
          });
        });

        // Activate first tab by default
        if (buttons.length > 0 && !tabContainer.querySelector('.bf-tab-button.active')) {
          buttons[0].click();
        }
      }
    });
  }

  // Smooth scrolling for internal links
  if (internalLinks.length > 0) {
    internalLinks.forEach(link => {
      link.addEventListener('click', function (e) {
        e.preventDefault();
        const targetId = this.getAttribute('href');
        const targetElement = document.querySelector(targetId);

        if (targetElement) {
          // Calculate offset to account for fixed header
          const headerHeight = document.querySelector('.bf-header')?.offsetHeight || 0;
          const targetPosition = targetElement.getBoundingClientRect().top + window.pageYOffset - headerHeight - 20;

          window.scrollTo({
            top: targetPosition,
            behavior: 'smooth'
          });

          // Set focus to the target element
          targetElement.setAttribute('tabindex', '-1');
          targetElement.focus({ preventScroll: true });

          // Update URL hash
          history.pushState(null, null, targetId);
        }
      });
    });
  }

  // Dark mode toggle
  if (toggleButton) {
    toggleButton.addEventListener('click', function () {
      const currentTheme = html.getAttribute('data-theme') || 'light';
      const newTheme = currentTheme === 'light' ? 'dark' : 'light';
      
      applyTheme(newTheme);
      
      // Save preference to localStorage
      localStorage.setItem('theme', newTheme);
      
      // Announce theme change to screen readers
      announceThemeChange(newTheme);
    });
    
    // Check for saved theme preference or respect OS preference
    const savedTheme = localStorage.getItem('theme');
    
    if (savedTheme) {
      applyTheme(savedTheme);
    } else if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
      applyTheme('dark');
    }
    
    // Listen for OS theme changes
    window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', e => {
      if (!localStorage.getItem('theme')) {
        applyTheme(e.matches ? 'dark' : 'light');
      }
    });
  }
  
  function applyTheme(theme) {
    html.setAttribute('data-theme', theme);
    
    // Update toggle button appearance
    if (toggleButton) {
      const moonIcon = toggleButton.querySelector('.moon-icon');
      const sunIcon = toggleButton.querySelector('.sun-icon');
      
      if (moonIcon && sunIcon) {
        if (theme === 'dark') {
          moonIcon.classList.add('hidden');
          sunIcon.classList.remove('hidden');
          toggleButton.setAttribute('aria-label', 'Switch to light mode');
        } else {
          moonIcon.classList.remove('hidden');
          sunIcon.classList.add('hidden');
          toggleButton.setAttribute('aria-label', 'Switch to dark mode');
        }
      }
    }
  }
  
  function announceThemeChange(theme) {
    const announcement = document.getElementById('theme-announcement');
    if (!announcement) {
      const newAnnouncement = document.createElement('div');
      newAnnouncement.id = 'theme-announcement';
      newAnnouncement.setAttribute('aria-live', 'polite');
      newAnnouncement.classList.add('sr-only');
      document.body.appendChild(newAnnouncement);
    }
    
    document.getElementById('theme-announcement').textContent = `Theme changed to ${theme} mode`;
  }
}); 