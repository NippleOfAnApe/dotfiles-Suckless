/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int fuzzy = 1;
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"monospace:size=10", "JoyPixels:size=12"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#E6F4F1", "#059DC0" },
	[SchemeSel] = { "#324B4B", "#6AF2F0" },
	[SchemeOut] = { "#000000", "#00ffff" },
	[SchemeSelHighlight] = { "#A2356A", "#E9FDFD" },
	[SchemeNormHighlight] = { "#FFE7D4", "#A2356A" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";