{
  description = ''A string formatting library inspired by Python's `format`.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."strfmt-master".type = "github";
  inputs."strfmt-master".owner = "riinr";
  inputs."strfmt-master".repo = "flake-nimble";
  inputs."strfmt-master".ref = "flake-pinning";
  inputs."strfmt-master".dir = "nimpkgs/s/strfmt/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}