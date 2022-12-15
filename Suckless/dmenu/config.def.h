/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int fuzzy = 1;
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Fira Code Medium:size=12", "monospace:size=10", "JoyPixels:size=13"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     				fg         bg       */
	[SchemeNorm] = { "#E9C46A", "#264653" },
	[SchemeSel] = { "#E9C46A", "#2A9D8F" },
	[SchemeOut] = { "#AA0000", "#ffffff" },
	[SchemeSelHighlight] = { "#264653", "#E9C46A" },
	[SchemeNormHighlight] = { "#E76F51", "#264653" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
