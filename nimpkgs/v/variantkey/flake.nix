{
  description = ''encode/decode variants to/from uint64'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."variantkey-master".type = "github";
  inputs."variantkey-master".owner = "riinr";
  inputs."variantkey-master".repo = "flake-nimble";
  inputs."variantkey-master".ref = "flake-pinning";
  inputs."variantkey-master".dir = "nimpkgs/v/variantkey/master";
  inputs."variantkey-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variantkey-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}