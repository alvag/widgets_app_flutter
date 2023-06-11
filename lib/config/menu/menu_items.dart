import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh,
  ),
  MenuItem(
    title: 'Snackbars y dialogos',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated container',
    subtitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.square_outlined,
  ),
  MenuItem(
    title: 'UI Controls + Tiles',
    subtitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.pest_control,
  ),
  MenuItem(
    title: 'Introduccion a la aplicacion',
    subtitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessibility,
  ),
  MenuItem(
    title: 'InfiniteScroll y Pull',
    subtitle: 'Listas infinitas y pull to refresh',
    link: '/lists',
    icon: Icons.list,
  ),
  MenuItem(
    title: 'Counter Riverpod',
    subtitle: 'Riverpod',
    link: '/counter',
    icon: Icons.list_alt_outlined,
  ),
  MenuItem(
    title: 'Cambiar tema',
    subtitle: 'Cambiar tema de la aplicacion',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
];
