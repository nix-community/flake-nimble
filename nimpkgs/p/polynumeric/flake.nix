{
  description = ''Polynomial operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."polynumeric-master".type = "github";
  inputs."polynumeric-master".owner = "riinr";
  inputs."polynumeric-master".repo = "flake-nimble";
  inputs."polynumeric-master".ref = "flake-pinning";
  inputs."polynumeric-master".dir = "nimpkgs/p/polynumeric/master";

    inputs."polynumeric-v0_2_0".type = "github";
  inputs."polynumeric-v0_2_0".owner = "riinr";
  inputs."polynumeric-v0_2_0".repo = "flake-nimble";
  inputs."polynumeric-v0_2_0".ref = "flake-pinning";
  inputs."polynumeric-v0_2_0".dir = "nimpkgs/p/polynumeric/v0_2_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}