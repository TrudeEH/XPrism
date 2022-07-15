/* user and group to drop privileges to */
static const char *user  = "nobody";
// static const char *group = "nogroup"; // use "nobody" for arch
static const char *group = "nobody";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#282a36",   /* after initialization */
	[INPUT] =  "#bd93f9",   /* during input */
	[FAILED] = "#ff79c6",   /* wrong password */
	[CAPS] =   "#ff5555",   /* CapsLock on */
	[BLOCKS] = "#f8f8f2",   /* key feedback block */
};



/* lock screen opacity */
static const float alpha = 0.9;

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;


/* number of failed password attempts until failcommand is executed.
   Set to 0 to disable */
static const int failcount = 0;

/* command to be executed after [failcount] failed password attempts */
static const char *failcommand = "shutdown";



/* time in seconds before the monitor shuts down */
static const int monitortime = 5;

static short int blocks_enabled = 1; // 0 = don't show blocks
static const int blocks_width = 0; // 0 = full width
static const int blocks_height = 16;

// position
static const int blocks_x = 0;
static const int blocks_y = 0;

// Number of blocks
static const int blocks_count = 10;


