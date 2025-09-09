package funkin.ui.debug.char.components.dialogs.results;

import funkin.ui.debug.char.components.dialogs.DefaultPageDialog;
import funkin.play.scoring.Scoring.ScoringRank;

typedef WizardFile = { var name:String; var bytes:haxe.io.Bytes; }

class ResultsMusicDialog extends DefaultPageDialog {
    public var musicStuff:Map<ScoringRank, {
        var intro:WizardFile;
        var song:WizardFile;
    }> = new Map();

    public function new() {
        super();
        for (r in [ScoringRank.PERFECT_GOLD, ScoringRank.PERFECT, ScoringRank.EXCELLENT, ScoringRank.GREAT, ScoringRank.GOOD, ScoringRank.SHIT]) {
            musicStuff.set(r, { intro: {name:"", bytes: null}, song: {name:"", bytes: null} });
        }
    }
}
