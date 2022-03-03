{
  description = ''Control AnyBar instances with Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."anybar-master".type = "github";
  inputs."anybar-master".owner = "riinr";
  inputs."anybar-master".repo = "flake-nimble";
  inputs."anybar-master".ref = "flake-pinning";
  inputs."anybar-master".dir = "nimpkgs/a/anybar/master";
  inputs."anybar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anybar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}