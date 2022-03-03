{
  description = ''<VS Code Data Swapper> Easily swap between multiple data folders.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."vscds-master".type = "github";
  inputs."vscds-master".owner = "riinr";
  inputs."vscds-master".repo = "flake-nimble";
  inputs."vscds-master".ref = "flake-pinning";
  inputs."vscds-master".dir = "nimpkgs/v/vscds/master";
  inputs."vscds-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vscds-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}