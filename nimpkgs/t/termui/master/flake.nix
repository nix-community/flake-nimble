{
  description = ''Simple UI components for the terminal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-termui-master.flake = false;
  inputs.src-termui-master.type = "github";
  inputs.src-termui-master.owner = "jjv360";
  inputs.src-termui-master.repo = "nim-termui";
  inputs.src-termui-master.ref = "refs/heads/master";
  inputs.src-termui-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."classes".type = "github";
  inputs."classes".owner = "riinr";
  inputs."classes".repo = "flake-nimble";
  inputs."classes".ref = "flake-pinning";
  inputs."classes".dir = "nimpkgs/c/classes";
  inputs."classes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."elvis".type = "github";
  inputs."elvis".owner = "riinr";
  inputs."elvis".repo = "flake-nimble";
  inputs."elvis".ref = "flake-pinning";
  inputs."elvis".dir = "nimpkgs/e/elvis";
  inputs."elvis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."elvis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-termui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-termui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-termui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}