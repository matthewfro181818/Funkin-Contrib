package funkin.ui.debug.char.components.dialogs.results;

import funkin.ui.debug.char.components.dialogs.DefaultPageDialog;
import funkin.ui.debug.char.components.common.Dropdown;
import funkin.data.freeplay.player.PlayerData;
import funkin.play.scoring.Scoring.ScoringRank;

typedef WizardFile = { var name:String; var bytes:haxe.io.Bytes; }

class ResultsAnimDialog extends DefaultPageDialog {
    public var rankDropdown:Dropdown = new Dropdown();
    public var currentRank:ScoringRank = ScoringRank.PERFECT_GOLD;

    // For export handler compatibility:
    public var rankAnimationFiles:Map<ScoringRank, Array<Array<WizardFile>>> = new Map();
    public var rankAnimationDataMap:Map<ScoringRank, Array<PlayerResultsAnimationData>> = new Map();

    public function new() {
        super();
        // Seed dropdown with ranks
        rankDropdown.add({ text: "PERFECT_GOLD" });
        rankDropdown.add({ text: "PERFECT" });
        rankDropdown.add({ text: "EXCELLENT" });
        rankDropdown.add({ text: "GREAT" });
        rankDropdown.add({ text: "GOOD" });
        rankDropdown.add({ text: "SHIT" });
        rankDropdown.selectedIndex = 0;

        for (r in [ScoringRank.PERFECT_GOLD, ScoringRank.PERFECT, ScoringRank.EXCELLENT, ScoringRank.GREAT, ScoringRank.GOOD, ScoringRank.SHIT]) {
            rankAnimationFiles.set(r, []);
            rankAnimationDataMap.set(r, []);
        }
    }

    public function changeRankPreview():Void {
        // no-op in stub
    }
}
