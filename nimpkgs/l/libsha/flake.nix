{
  description = ''Sha1 and Sha2 implementations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libsha-master".type = "github";
  inputs."libsha-master".owner = "riinr";
  inputs."libsha-master".repo = "flake-nimble";
  inputs."libsha-master".ref = "flake-pinning";
  inputs."libsha-master".dir = "nimpkgs/l/libsha/master";
  inputs."libsha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}