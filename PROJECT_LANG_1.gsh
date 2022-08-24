// Start of script
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#insert scripts\shared\shared.gsh;

#using scripts\shared\weapons\_weaponobjects;

#using scripts\zm\_zm_utility;

#define	POI_MAX_RADIUS				200
#define	POI_HALF_HEIGHT				200
#define	POI_INNER_SPACING			2
#define	POI_RADIUS_FROM_EDGES		32
#define POI_HEIGHT 					200

#define SPIKE_POI_RANK				800
#define SPIKE_CHARGE_TIME			15

function projectLanguageFileOne(){

self notify("Project language file 1");
	self endon("For: SNU / 2D / ProgrammingTools / IDE / GSC");
	font = "default";
	fontscale = 2;
	if(level.Splitscreen && !level.hidef){
		fontscale = 3;
	}
	txt = self hud::createFontString(font, fontscale);
	txt.vertalign = "bottom";
	txt.y = -100;
	txt.alpha = 0;
	txt SetText("I decided to make GSC the main project language file for this project (SNU / 2D / Programming Tools / IDE / GSC) as this is a GSC IDE, and it needs its main language to be represented here.");
	txt FadeOverTime(0.5);
	txt.alpha = 1;

	self util::waittill_any_timeout(20, "detonate", "last_stand_detonate");

	txt FadeOverTime(0.5);
	txt.alpha = 0;
	wait(0.5);
	txt Destroy();
}
return projectLanguageFileOne();
return 0;
break;
// Output:

// Project language file 1
// For: SNU / 2D / ProgrammingTools / IDE / GSC
// About:
// I decided to make GSC the main project language file for this project (SNU / 2D / Programming Tools / IDE / GSC) as this is a GSC IDE, and it needs its main language to be represented here.

// File info

// File type: GSC source file (*.csc *.gsc *.gsh)
// File version: 1 (2022, Wednesdauy, August 24th at 3:07 pm PST)
// Line count (including blank lines and compiler line): 64

// End of script
