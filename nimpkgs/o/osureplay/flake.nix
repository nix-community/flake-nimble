{
  description = ''osu! replay parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."osureplay-master".type = "github";
  inputs."osureplay-master".owner = "riinr";
  inputs."osureplay-master".repo = "flake-nimble";
  inputs."osureplay-master".ref = "flake-pinning";
  inputs."osureplay-master".dir = "nimpkgs/o/osureplay/master";

    inputs."osureplay-v0_0_3".type = "github";
  inputs."osureplay-v0_0_3".owner = "riinr";
  inputs."osureplay-v0_0_3".repo = "flake-nimble";
  inputs."osureplay-v0_0_3".ref = "flake-pinning";
  inputs."osureplay-v0_0_3".dir = "nimpkgs/o/osureplay/v0_0_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}