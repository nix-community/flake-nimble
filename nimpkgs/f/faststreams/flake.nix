{
  description = ''Nearly zero-overhead input/output streams for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."faststreams-master".type = "github";
  inputs."faststreams-master".owner = "riinr";
  inputs."faststreams-master".repo = "flake-nimble";
  inputs."faststreams-master".ref = "flake-pinning";
  inputs."faststreams-master".dir = "nimpkgs/f/faststreams/master";
  inputs."faststreams-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faststreams-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}