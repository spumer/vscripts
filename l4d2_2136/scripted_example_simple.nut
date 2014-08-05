// This simple holdout mode has one cycle comprised of these stages:
// STAGE_SETUP - This starts on map spawn. The setup stage lasts for 10 seconds
// STAGE_PANIC - Zombies attack!
// STAGE_CLEAROUT - Zombies stop spawning.

ModeOptions<-
{
	// Mob behavior: When a mob starts, zombies will spawn into the world up to the CommonLimit, and then as zombies are killed
	// new zombies will continue to spawn into the world until the MegaMobSize has been depleted.
	CommonLimit = 20 // Maximum number of common zombies alive in the world at the same time
	MegaMobSize = 50 // Total number of common zombies in a mob.
	WanderingZombieDensityModifier = 0
}

// table to hold game mode data
ModeState<-
{
	CurrentStage = -1
}

// This simple holdout mode has one cycle comprised of these stages:
// STAGE_SETUP - This starts on map spawn. The setup stage lasts for 10 seconds
// STAGE_PANIC - Zombies attack!
// STAGE_CLEAROUT - Zombies have stopped spawning.  You have 10 seconds until the clearout condition is met.
// STAGE_RESULTS - You win!  Results are displayed.
function GetNextStage()
{
	SessionState.CurrentStage++
 
	//  stage sequencing
	if ( SessionState.CurrentStage == 0 )
	{		
		SessionOptions.ScriptedStageType = STAGE_SETUP
		SessionOptions.ScriptedStageValue = 10
	}
	else if ( SessionState.CurrentStage == 1 )
	{
		SessionOptions.ScriptedStageType = STAGE_PANIC
		SessionOptions.ScriptedStageValue = 1
	}
	else if ( SessionState.CurrentStage == 2 )
	{
		SessionOptions.ScriptedStageType = STAGE_CLEAROUT
		SessionOptions.ScriptedStageValue = 10
	}
	else if ( SessionState.CurrentStage == 3 )
	{
		SessionOptions.ScriptedStageType = STAGE_RESULTS
	}
 }