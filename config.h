/*********************************************************************
 *                           Global settings                         *
 *                               TruDE                               *
 *********************************************************************/

/*********************************************************************
 *                           Appearance                              *
 *********************************************************************/

#include "themes/dracula.h"

#define colorBg         gray2  /* Background color from themes/theme.h */
#define colorFg         white  /* Foreground color */
#define colorPrimary	blue   /* Primary color (borders and selections) */
#define colorInactive	gray3  /* Inactive color (hidden elements and unselected borders */

#define borderSize	2      /* Border size in pixels */
#define gapSizeWindow   5      /* Gap between windows in pixels */
#define gapSizeScreen   5      /* Gap between the windows and the edges of the screen */

#define barTop		1      /* 1 - Places the bar at the top; 0 - Places the bar at the bottom. */
#define barToggle       1      /* 1 - Show the bar; 0 - Hide the bar */
#define barGap		0      /* Gap between the bar and the edges of the screen in pixels. */
#define barTray		1      /* 1 - Show the system tray; 0 - Hide the system tray */
#define barHeight	0      /* 0 - Automatic height based on font; >=1 - Height in pixels */

#define barAlpha  	0xd0   /* Bar transparency */
#define borderAlpha	OPAQUE /* Border transparency */

/*********************************************************************
 *                       ADVANCED CONFIGURATION                      *
 *                        Proceed with caution                       *
 *********************************************************************/

/* DWM Appearance */

/* Settings */
#define snapPixel           32
#define smartGaps            1 /* Gap factor when there is only one client. 0 -> no gaps; 3 -> 3x outer gaps */
#define statusMonitor       -1 /* Show status on: -1 -> All monitors; 0,2,3... -> A specific monitor by index; A -> Active monitor */
#define horizontalPaddingBar 2 /* Horizontal padding for the statusbar */
#define verticalPaddingBar   5 /* Vertical padding for the statusbar */
#define systraySpacing       1 /* Systray Spacing*/

/* Indicators*/
/*	INDICATOR_NONE
	INDICATOR_TOP_LEFT_SQUARE
        INDICATOR_TOP_LEFT_LARGER_SQUARE
        INDICATOR_TOP_BAR
        INDICATOR_TOP_BAR_SLIM
        INDICATOR_BOTTOM_BAR
        INDICATOR_BOTTOM_BAR_SLIM
        INDICATOR_BOX
        INDICATOR_BOX_WIDER
        INDICATOR_BOX_FULL
        INDICATOR_CLIENT_DOTS
        INDICATOR_RIGHT_TAGS
        INDICATOR_PLUS
        INDICATOR_PLUS_AND_SQUARE
	INDICATOR_PLUS_AND_LARGER_SQUARE */

#define tagIndicatorType   INDICATOR_TOP_LEFT_SQUARE
#define tiledIndicatorType INDICATOR_NONE
#define floatIndicatorType INDICATOR_TOP_LEFT_SQUARE

/* Colors */
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
