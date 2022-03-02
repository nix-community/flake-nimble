{
  description = ''Asynchronous docker client written by Nim-lang'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."asyncdocker-master".type = "github";
  inputs."asyncdocker-master".owner = "riinr";
  inputs."asyncdocker-master".repo = "flake-nimble";
  inputs."asyncdocker-master".ref = "flake-pinning";
  inputs."asyncdocker-master".dir = "nimpkgs/a/asyncdocker/master";
  inputs."asyncdocker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncdocker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}