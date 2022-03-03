{
  description = ''Nim bindings for WSTP'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wstp-master".type = "github";
  inputs."wstp-master".owner = "riinr";
  inputs."wstp-master".repo = "flake-nimble";
  inputs."wstp-master".ref = "flake-pinning";
  inputs."wstp-master".dir = "nimpkgs/w/wstp/master";
  inputs."wstp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wstp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}