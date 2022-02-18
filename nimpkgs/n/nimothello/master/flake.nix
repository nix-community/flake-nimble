{
  description = ''A teminal othello (reversi) in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimothello-master.flake = false;
  inputs.src-nimothello-master.type = "github";
  inputs.src-nimothello-master.owner = "jiro4989";
  inputs.src-nimothello-master.repo = "nimothello";
  inputs.src-nimothello-master.ref = "refs/heads/master";
  
  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimothello-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimothello-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimothello-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}