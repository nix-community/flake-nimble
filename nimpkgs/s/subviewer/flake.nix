{
  description = ''Nim module for parsing SubViewer subtitle files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."subviewer-master".type = "github";
  inputs."subviewer-master".owner = "riinr";
  inputs."subviewer-master".repo = "flake-nimble";
  inputs."subviewer-master".ref = "flake-pinning";
  inputs."subviewer-master".dir = "nimpkgs/s/subviewer/master";
  inputs."subviewer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subviewer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}