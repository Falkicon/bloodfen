/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./layouts/**/*.html",
    "./content/**/*.md",
    "./content/**/*.html"
  ],
  theme: {
    extend: {
      colors: {
        // Brand colors
        'bf-primary': {
          DEFAULT: '#1a1c2a',
          '50': '#f5f5f7',
          '100': '#e6e7ec',
          '200': '#c5c7d4',
          '300': '#9ea2b8',
          '400': '#757a9c',
          '500': '#5a5f83',
          '600': '#474c6c',
          '700': '#373c57',
          '800': '#2a2e44',
          '900': '#1a1c2a',
        },
        'bf-secondary': {
          DEFAULT: '#2c3e50',
          '50': '#f6f8f9',
          '100': '#e7ecf0',
          '200': '#c6d3dc',
          '300': '#9db3c3',
          '400': '#6d8da6',
          '500': '#4f7090',
          '600': '#3e5a76',
          '700': '#34495e',
          '800': '#2c3e50',
          '900': '#1e2a36',
        },
        'bf-accent': {
          DEFAULT: '#3498db',
          '50': '#f0f8fe',
          '100': '#d9ecfc',
          '200': '#b3d9f9',
          '300': '#8cc6f5',
          '400': '#66b3f1',
          '500': '#3498db',
          '600': '#2980b9',
          '700': '#216897',
          '800': '#1a5276',
          '900': '#12364e',
        },
        'bf-highlight': {
          DEFAULT: '#3498db',
          '50': '#f0f8fe',
          '100': '#d9ecfc',
          '200': '#b3d9f9',
          '300': '#8cc6f5',
          '400': '#66b3f1',
          '500': '#3498db',
          '600': '#2980b9',
          '700': '#216897',
          '800': '#1a5276',
          '900': '#12364e',
        },
        // UI colors
        'bf-success': {
          DEFAULT: '#2ecc71',
          '100': '#eafaf1',
          '500': '#2ecc71',
          '700': '#27ae60',
        },
        'bf-warning': {
          DEFAULT: '#f1c40f',
          '100': '#fef9e7',
          '500': '#f1c40f',
          '700': '#d4ac0d',
        },
        'bf-danger': {
          DEFAULT: '#e74c3c',
          '100': '#fdedeb',
          '500': '#e74c3c',
          '700': '#c0392b',
        },
        'bf-info': {
          DEFAULT: '#3498db',
          '100': '#ebf5fb',
          '500': '#3498db',
          '700': '#2980b9',
        },
        // Text colors
        'bf-text': {
          DEFAULT: '#ecf0f1',
          'secondary': '#bdc3c7',
          'muted': '#95a5a6',
        },
        // Background colors
        'bf-bg': {
          DEFAULT: '#121420',
          'card': 'rgba(30, 35, 40, 0.8)',
          'footer': 'rgba(20, 25, 30, 0.95)',
        },
        // Class colors
        'class': {
          'warrior': '#C79C6E',
          'paladin': '#F58CBA',
          'hunter': '#ABD473',
          'rogue': '#FFF569',
          'priest': '#FFFFFF',
          'shaman': '#0070DE',
          'mage': '#69CCF0',
          'warlock': '#9482C9',
          'monk': '#00FF96',
          'druid': '#FF7D0A',
          'demon-hunter': '#A330C9',
          'death-knight': '#C41F3B',
          'evoker': '#33937F',
        },
      },
      fontFamily: {
        'sans': ['Roboto', 'ui-sans-serif', 'system-ui', 'sans-serif'],
        'heading': ['Cinzel', 'serif'],
      },
      fontSize: {
        'xs': ['0.75rem', { lineHeight: '1rem' }],
        'sm': ['0.875rem', { lineHeight: '1.25rem' }],
        'base': ['1rem', { lineHeight: '1.5rem' }],
        'lg': ['1.125rem', { lineHeight: '1.75rem' }],
        'xl': ['1.25rem', { lineHeight: '1.75rem' }],
        '2xl': ['1.5rem', { lineHeight: '2rem' }],
        '3xl': ['1.875rem', { lineHeight: '2.25rem' }],
        '4xl': ['2.25rem', { lineHeight: '2.5rem' }],
        '5xl': ['3rem', { lineHeight: '1.16' }],
        '6xl': ['3.75rem', { lineHeight: '1.1' }],
      },
      spacing: {
        '128': '32rem',
        '144': '36rem',
      },
      borderRadius: {
        'bf': '0.375rem',
      },
      boxShadow: {
        'bf': '0 10px 30px rgba(0, 0, 0, 0.3)',
        'bf-hover': '0 15px 40px rgba(0, 0, 0, 0.4), 0 0 20px rgba(52, 152, 219, 0.2)',
        'bf-inner': 'inset 0 2px 4px 0 rgba(0, 0, 0, 0.2)',
      },
      backgroundImage: {
        'hero-pattern': "url('/images/hero-bg.jpg')",
        'texture': "url('/images/bg-texture.jpg')",
        'gradient-radial': 'radial-gradient(var(--tw-gradient-stops))',
        'gradient-bf': 'linear-gradient(to right, var(--tw-gradient-stops))',
      },
      animation: {
        'pulse-slow': 'pulse 3s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        'float': 'float 6s ease-in-out infinite',
        'glow': 'glow 2s ease-in-out infinite alternate',
      },
      keyframes: {
        float: {
          '0%, 100%': { transform: 'translateY(0)' },
          '50%': { transform: 'translateY(-10px)' },
        },
        glow: {
          '0%': { boxShadow: '0 0 5px rgba(52, 152, 219, 0.5)' },
          '100%': { boxShadow: '0 0 20px rgba(52, 152, 219, 0.8), 0 0 30px rgba(52, 152, 219, 0.6)' },
        },
      },
      transitionDuration: {
        '2000': '2000ms',
      },
    },
  },
  plugins: [
    function({ addComponents, theme }) {
      addComponents({
        '.bf-container': {
          maxWidth: '100%',
          marginLeft: 'auto',
          marginRight: 'auto',
          paddingLeft: theme('spacing.4'),
          paddingRight: theme('spacing.4'),
          '@screen sm': {
            maxWidth: '640px',
          },
          '@screen md': {
            maxWidth: '768px',
          },
          '@screen lg': {
            maxWidth: '1024px',
          },
          '@screen xl': {
            maxWidth: '1280px',
          },
        },
      })
    },
  ],
} 