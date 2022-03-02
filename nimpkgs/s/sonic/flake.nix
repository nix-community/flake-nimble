{
  description = ''client for sonic search backend'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sonic-master".type = "github";
  inputs."sonic-master".owner = "riinr";
  inputs."sonic-master".repo = "flake-nimble";
  inputs."sonic-master".ref = "flake-pinning";
  inputs."sonic-master".dir = "nimpkgs/s/sonic/master";
  inputs."sonic-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sonic-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}