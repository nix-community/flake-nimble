{
  description = ''3DES native library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."des-master".type = "github";
  inputs."des-master".owner = "riinr";
  inputs."des-master".repo = "flake-nimble";
  inputs."des-master".ref = "flake-pinning";
  inputs."des-master".dir = "nimpkgs/d/des/master";
  inputs."des-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."des-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}