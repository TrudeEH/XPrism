#include "../config.h"

/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = dmenuTopBar;        /* -b  option; if 0, dmenu appears at bottom */
static int opacity = dmenuOpacity;      /* -o  option; if 0, then alpha is disabled */
static int center = dmenuCenter;        /* -c  option; if 0, dmenu won't be centered on the screen */
static int min_width = dmenuMinWidth;             /* minimum width when centered */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] =
{
	"monospace:size=10"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */

static const unsigned int baralpha = barAlpha;
static const unsigned int borderalpha = borderAlpha;
static const unsigned int alphas[][3]      = {
	/*               fg      bg        border     */
	[SchemeNorm] = { OPAQUE, baralpha, borderalpha },
	[SchemeSel]  = { OPAQUE, baralpha, borderalpha },
	[SchemeBorder] = { OPAQUE, OPAQUE, OPAQUE },
	[SchemeSelHighlight] = { OPAQUE, baralpha, borderalpha },
	[SchemeNormHighlight] = { OPAQUE, baralpha, borderalpha },
	[SchemeHp] = { OPAQUE, baralpha, borderalpha },
};

static const char *colors[][2] = {
	/*                          fg         bg       */
	[SchemeNorm]          = { colorFg,       colorBg },
	[SchemeSel]           = { colorBg,       colorPrimary },
	[SchemeOut]           = { colorFg,       colorBg },
	[SchemeBorder]        = { colorPrimary, colorPrimary },
	[SchemeSelHighlight]  = { colorBg,       colorPrimary },
	[SchemeNormHighlight] = { colorPrimary,  colorBg },
	[SchemeHp]            = { colorFg,       colorBg },
};

/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = dmenuLines;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* Size of the window border */
static unsigned int border_width = dmenuBorderWidth;
