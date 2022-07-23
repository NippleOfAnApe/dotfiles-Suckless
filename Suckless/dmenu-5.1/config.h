/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int fuzzy = 1;
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"monospace:size=10", "JoyPixels:size=13"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     				fg         bg       */
	[SchemeNorm] = { "#ffc300", "#001d3d" },
	[SchemeSel] = { "#ffd60a", "#003566" },
	[SchemeOut] = { "#AA0000", "#ffffff" },
	[SchemeSelHighlight] = { "#fdfcdc", "#f07167" },
	[SchemeNormHighlight] = { "#fed9b7", "#0081a7" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";