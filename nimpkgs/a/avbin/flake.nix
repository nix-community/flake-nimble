{
  description = ''Wrapper of the AVbin library for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."avbin-master".type = "github";
  inputs."avbin-master".owner = "riinr";
  inputs."avbin-master".repo = "flake-nimble";
  inputs."avbin-master".ref = "flake-pinning";
  inputs."avbin-master".dir = "nimpkgs/a/avbin/master";
  inputs."avbin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."avbin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}