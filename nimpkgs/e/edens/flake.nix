{
  description = ''A command to encode / decode text with your dictionary'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."edens-master".type = "github";
  inputs."edens-master".owner = "riinr";
  inputs."edens-master".repo = "flake-nimble";
  inputs."edens-master".ref = "flake-pinning";
  inputs."edens-master".dir = "nimpkgs/e/edens/master";

    inputs."edens-1_0_0".type = "github";
  inputs."edens-1_0_0".owner = "riinr";
  inputs."edens-1_0_0".repo = "flake-nimble";
  inputs."edens-1_0_0".ref = "flake-pinning";
  inputs."edens-1_0_0".dir = "nimpkgs/e/edens/1_0_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}