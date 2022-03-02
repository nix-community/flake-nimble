{
  description = ''Nim GUI Automation Linux, simulate user interaction, mouse and keyboard.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xdo-master".type = "github";
  inputs."xdo-master".owner = "riinr";
  inputs."xdo-master".repo = "flake-nimble";
  inputs."xdo-master".ref = "flake-pinning";
  inputs."xdo-master".dir = "nimpkgs/x/xdo/master";
  inputs."xdo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xdo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}