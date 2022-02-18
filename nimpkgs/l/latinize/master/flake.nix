{
  description = ''Convert accents (diacritics) from strings to latin characters.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-latinize-master.flake = false;
  inputs.src-latinize-master.type = "github";
  inputs.src-latinize-master.owner = "AmanoTeam";
  inputs.src-latinize-master.repo = "Latinize";
  inputs.src-latinize-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-latinize-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latinize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-latinize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}