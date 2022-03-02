{
  description = ''A minimalistic connection pooling package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tinypool-master".type = "github";
  inputs."tinypool-master".owner = "riinr";
  inputs."tinypool-master".repo = "flake-nimble";
  inputs."tinypool-master".ref = "flake-pinning";
  inputs."tinypool-master".dir = "nimpkgs/t/tinypool/master";
  inputs."tinypool-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tinypool-0_2_0".type = "github";
  inputs."tinypool-0_2_0".owner = "riinr";
  inputs."tinypool-0_2_0".repo = "flake-nimble";
  inputs."tinypool-0_2_0".ref = "flake-pinning";
  inputs."tinypool-0_2_0".dir = "nimpkgs/t/tinypool/0_2_0";
  inputs."tinypool-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."tinypool-0_2_1".type = "github";
  inputs."tinypool-0_2_1".owner = "riinr";
  inputs."tinypool-0_2_1".repo = "flake-nimble";
  inputs."tinypool-0_2_1".ref = "flake-pinning";
  inputs."tinypool-0_2_1".dir = "nimpkgs/t/tinypool/0_2_1";
  inputs."tinypool-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinypool-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}