import { NestedMenu, PathMenu, UrlMenu } from '@/domain/entities';

export * from './fonts';
export * from './queries';
export * from './symbols';
export * from './themes';

export const Config: {
  site: {
    url: string;
    title: string;
    tagline: string;
    description: string;
    locale: string;
  };
  nav: {
    menus: Required<
      | Omit<PathMenu, 'matcher'>
      | UrlMenu
      | NestedMenu<Omit<PathMenu, 'icon' | 'matcher'> | Omit<UrlMenu, 'icon'>>
    >[];
  };
  sidebar: {
    menus: RequiredProperty<PathMenu | NestedMenu<RequiredProperty<PathMenu, 'icon'>>, 'icon'>[];
  };
} = {
  site: {
    url: process.env.NEXT_PUBLIC_APP_URL as string,
    title: 'Praktik Basis Data',
    tagline: 'Pagelaran Mahasiswa Nasional Bidang Teknologi Informasi Dan Komunikasi',
    description:
      'GEMASTIK atau Pagelaran Mahasiswa Nasional Bidang Teknologi Informasi dan Komunikasi merupakan program Pusat Prestasi Nasional, Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi.',
    locale: 'id-ID',
  },
  nav: {
    menus: [],
  },
  sidebar: {
    menus: [
      {
        name: 'Overview',
        icon: 'space-dashboard',
        path: '/',
      },
      {
        name: 'Queries',
        icon: 'terminal',
        items: [
          {
            name: 'Query 1',
            icon: 'data-object',
            path: '/queries/1',
            matcher: '^\\/queries\\/1(?!0)',
          },
          {
            name: 'Query 2',
            icon: 'data-object',
            path: '/queries/2',
            matcher: '^\\/queries\\/2',
          },
          {
            name: 'Query 3',
            icon: 'data-object',
            path: '/queries/3',
            matcher: '^\\/queries\\/3',
          },
          {
            name: 'Query 4',
            icon: 'data-object',
            path: '/queries/4',
            matcher: '^\\/queries\\/4',
          },
          {
            name: 'Query 5',
            icon: 'data-object',
            path: '/queries/5',
            matcher: '^\\/queries\\/5',
          },
          {
            name: 'Query 6',
            icon: 'data-object',
            path: '/queries/6',
            matcher: '^\\/queries\\/6',
          },
          {
            name: 'Query 7',
            icon: 'data-object',
            path: '/queries/7',
            matcher: '^\\/queries\\/7',
          },
          {
            name: 'Query 8',
            icon: 'data-object',
            path: '/queries/8',
            matcher: '^\\/queries\\/8',
          },
          {
            name: 'Query 9',
            icon: 'data-object',
            path: '/queries/9',
            matcher: '^\\/queries\\/9',
          },
          {
            name: 'Query 10',
            icon: 'data-object',
            path: '/queries/10',
            matcher: '^\\/queries\\/10',
          },
        ],
      },
    ],
  },
};
