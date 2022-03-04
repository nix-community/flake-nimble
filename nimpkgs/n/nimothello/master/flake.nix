{
  description = ''A teminal othello (reversi) in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimothello-master.flake = false;
  inputs.src-nimothello-master.type = "github";
  inputs.src-nimothello-master.owner = "jiro4989";
  inputs.src-nimothello-master.repo = "nimothello";
  inputs.src-nimothello-master.ref = "refs/heads/master";
  inputs.src-nimothello-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimothello-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimothello-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimothello-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}