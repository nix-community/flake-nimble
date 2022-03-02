{
  description = ''RC4 library implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rc4-master".type = "github";
  inputs."rc4-master".owner = "riinr";
  inputs."rc4-master".repo = "flake-nimble";
  inputs."rc4-master".ref = "flake-pinning";
  inputs."rc4-master".dir = "nimpkgs/r/rc4/master";
  inputs."rc4-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rc4-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}