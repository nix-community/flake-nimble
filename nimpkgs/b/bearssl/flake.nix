{
  description = ''Bindings to BearSSL library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bearssl-master".type = "github";
  inputs."bearssl-master".owner = "riinr";
  inputs."bearssl-master".repo = "flake-nimble";
  inputs."bearssl-master".ref = "flake-pinning";
  inputs."bearssl-master".dir = "nimpkgs/b/bearssl/master";
  inputs."bearssl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearssl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}