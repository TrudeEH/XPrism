#include "../config.h"

/* user and group to drop privileges to */
static const char *user  = "nobody";
// static const char *group = "nogroup"; // use "nobody" for arch
static const char *group = "nogroup";

static const char *colorname[NUMCOLS] = {
	[INIT] =   gray2,   /* after initialization */
	[INPUT] =  blue,   /* during input */
	[FAILED] = pink,   /* wrong password */
	[CAPS] =   red,   /* CapsLock on */
	[BLOCKS] = white,   /* key feedback block */
};


/* lock screen opacity */
static const float alpha = slockAlpha;

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* number of failed password attempts until failcommand is executed.
   Set to 0 to disable */
static const int failcount = slockFailCount;

/* command to be executed after [failcount] failed password attempts */
static const char *failcommand = slockFailCommand;

/* time in seconds before the monitor shuts down */
static const int monitortime = slockMonitorTime;

static short int blocks_enabled = slockBlocksEnabled; // 0 = don't show blocks
static const int blocks_width = slockBlocksWidth; // 0 = full width
static const int blocks_height = slockBlocksHeight;

// position
static const int blocks_x = slockBlocksX;
static const int blocks_y = slockBlocksY;

// Number of blocks
static const int blocks_count = slockBlocksCount;
