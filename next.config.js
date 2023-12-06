/** @type {import('next').NextConfig} */
module.exports = {
  poweredByHeader: false,
  reactStrictMode: true,
  modularizeImports: {
    '@mui/material': {
      transform: '@mui/material/{{member}}',
    },
    '@mui/icons-material': {
      transform: '@mui/icons-material/{{member}}',
    },
  },
  experimental: {
    serverComponentsExternalPackages: ['sequelize', 'mysql2', 'pg', 'pg-hstore'],
    serverActions: true,
  },
};
