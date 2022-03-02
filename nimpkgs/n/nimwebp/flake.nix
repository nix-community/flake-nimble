{
  description = ''Webp encoder and decoder bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimwebp-master".type = "github";
  inputs."nimwebp-master".owner = "riinr";
  inputs."nimwebp-master".repo = "flake-nimble";
  inputs."nimwebp-master".ref = "flake-pinning";
  inputs."nimwebp-master".dir = "nimpkgs/n/nimwebp/master";
  inputs."nimwebp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwebp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}