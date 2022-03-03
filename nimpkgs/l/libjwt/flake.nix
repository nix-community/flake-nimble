{
  description = ''Bindings for libjwt'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."libjwt-master".type = "github";
  inputs."libjwt-master".owner = "riinr";
  inputs."libjwt-master".repo = "flake-nimble";
  inputs."libjwt-master".ref = "flake-pinning";
  inputs."libjwt-master".dir = "nimpkgs/l/libjwt/master";
  inputs."libjwt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libjwt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}