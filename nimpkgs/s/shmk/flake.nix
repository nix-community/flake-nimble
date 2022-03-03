{
  description = ''Smart file/folder creation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."shmk-master".type = "github";
  inputs."shmk-master".owner = "riinr";
  inputs."shmk-master".repo = "flake-nimble";
  inputs."shmk-master".ref = "flake-pinning";
  inputs."shmk-master".dir = "nimpkgs/s/shmk/master";
  inputs."shmk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shmk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}