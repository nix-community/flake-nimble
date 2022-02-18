{
  description = ''Convert accents (diacritics) from strings to latin characters.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-latinize-v0_1.flake = false;
  inputs.src-latinize-v0_1.type = "github";
  inputs.src-latinize-v0_1.owner = "AmanoTeam";
  inputs.src-latinize-v0_1.repo = "Latinize";
  inputs.src-latinize-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-latinize-v0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-latinize-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-latinize-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}