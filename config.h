/*
    Global config file
*/

/* Global appearance */

#include "themes/dracula.h"

#define colorBg         gray2 /* Background color from themes/theme.h */
#define colorFg         white /* Foreground color */
#define colorPrimary	blue  /* Primary color (borders and selections) */
#define colorInactive	gray3 /* Inactive color (hidden elements and unselected borders */

#define borderSize	2     /* Border size in pixels */
#define gapSizeWindow   5     /* Gap between windows in pixels */
#define gapSizeScreen   5     /* Gap between the windows and the edges of the screen */
#define barTop		1     /* 1 - Places the bar at the top; 0 - Places the bar at the bottom. */
#define barToggle       1     /* 1 - Show the bar; 0 - Hide the bar */


/* ADVANCED CONFIGURATION */

/* DWM Appearance */

/* Normal */
#define normalFg colorFg
#define normalBg colorBg
#define normalBorder colorInactive
#define normalFloatingBorder colorInactive

/* Selected */
#define selFg colorBg
#define selBg colorPrimary
#define selBorder colorPrimary
#define selFloatingBorder colorPrimary

/* Title */
#define titleFg colorFg
#define titleBg colorBg
#define titleBorder colorInactive
#define titleFloatingBorder colorInactive

/* Title Selected */
#define tselFg colorBg
#define tselBg colorPrimary
#define tselBorder colorPrimary
#define tselFloatingBorder colorPrimary

/* Tags */
#define tagsFg colorFg
#define tagsBg colorBg
#define tagsBorder colorInactive
#define tagsFloatingBorder colorInactive

/* Tags Selected */
#define tagSelFg colorBg
#define tagSelBg colorPrimary
#define tagSelBorder colorPrimary
#define tagSelFloatingBorder colorPrimary

/* Hidden */
#define hidFg colorFg
#define hidBg colorBg

/* Hidden Selected */
#define hidSelFg colorBg
#define hidSelBg colorPrimary

/* Urgent */
#define urgFg colorFg
#define urgBg colorBg
#define urgBorder colorPrimary
#define urgFloatingBorder colorPrimary
