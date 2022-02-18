{
  description = ''til-tool: Today I Learned tool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."til-master".type = "github";
  inputs."til-master".owner = "riinr";
  inputs."til-master".repo = "flake-nimble";
  inputs."til-master".ref = "flake-pinning";
  inputs."til-master".dir = "nimpkgs/t/til/master";

    inputs."til-v0_0_1".type = "github";
  inputs."til-v0_0_1".owner = "riinr";
  inputs."til-v0_0_1".repo = "flake-nimble";
  inputs."til-v0_0_1".ref = "flake-pinning";
  inputs."til-v0_0_1".dir = "nimpkgs/t/til/v0_0_1";

    inputs."til-v0_0_2".type = "github";
  inputs."til-v0_0_2".owner = "riinr";
  inputs."til-v0_0_2".repo = "flake-nimble";
  inputs."til-v0_0_2".ref = "flake-pinning";
  inputs."til-v0_0_2".dir = "nimpkgs/t/til/v0_0_2";

    inputs."til-v0_0_3".type = "github";
  inputs."til-v0_0_3".owner = "riinr";
  inputs."til-v0_0_3".repo = "flake-nimble";
  inputs."til-v0_0_3".ref = "flake-pinning";
  inputs."til-v0_0_3".dir = "nimpkgs/t/til/v0_0_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}