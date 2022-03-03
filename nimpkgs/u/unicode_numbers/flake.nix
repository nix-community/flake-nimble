{
  description = ''Converts a number into a specially formatted Unicode string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."unicode_numbers-master".type = "github";
  inputs."unicode_numbers-master".owner = "riinr";
  inputs."unicode_numbers-master".repo = "flake-nimble";
  inputs."unicode_numbers-master".ref = "flake-pinning";
  inputs."unicode_numbers-master".dir = "nimpkgs/u/unicode_numbers/master";
  inputs."unicode_numbers-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicode_numbers-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}