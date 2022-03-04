{
  description = ''A simple terminal tetris in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimtetris-master.flake = false;
  inputs.src-nimtetris-master.type = "github";
  inputs.src-nimtetris-master.owner = "jiro4989";
  inputs.src-nimtetris-master.repo = "nimtetris";
  inputs.src-nimtetris-master.ref = "refs/heads/master";
  inputs.src-nimtetris-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtetris-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtetris-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtetris-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}