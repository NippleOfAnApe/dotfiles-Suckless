/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nobody";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#059DC0",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

static const char *imgpath          = "/usr/share/icons/kripak.xpm";
static const int imgwidth           = 474;
static const int imgheight          = 520;
static const int imgoffsetx         = 723;
static const int imgoffsety         = 500;
static const int showimgonlyatstart = 1;

/* default message */
static const char * message = "\"Screen is lock\"\n\"no\"";

/* text color */
static const char * text_color = "#ffffff";

/* text size (must be a valid size) */
static const char * font_name = "-misc-fixed-medium-r-semicondensed--13-120-75-75-c-60-iso8859-1";
