{
  description = ''Easily use Animate.css classes'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."animatecss-master".type = "github";
  inputs."animatecss-master".owner = "riinr";
  inputs."animatecss-master".repo = "flake-nimble";
  inputs."animatecss-master".ref = "flake-pinning";
  inputs."animatecss-master".dir = "nimpkgs/a/animatecss/master";
  inputs."animatecss-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."animatecss-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}