{
  description = ''Simple database generator, connector and query tools.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."zfdbms-main".type = "github";
  inputs."zfdbms-main".owner = "riinr";
  inputs."zfdbms-main".repo = "flake-nimble";
  inputs."zfdbms-main".ref = "flake-pinning";
  inputs."zfdbms-main".dir = "nimpkgs/z/zfdbms/main";

    inputs."zfdbms-v0_0_1".type = "github";
  inputs."zfdbms-v0_0_1".owner = "riinr";
  inputs."zfdbms-v0_0_1".repo = "flake-nimble";
  inputs."zfdbms-v0_0_1".ref = "flake-pinning";
  inputs."zfdbms-v0_0_1".dir = "nimpkgs/z/zfdbms/v0_0_1";

    inputs."zfdbms-v0_0_2".type = "github";
  inputs."zfdbms-v0_0_2".owner = "riinr";
  inputs."zfdbms-v0_0_2".repo = "flake-nimble";
  inputs."zfdbms-v0_0_2".ref = "flake-pinning";
  inputs."zfdbms-v0_0_2".dir = "nimpkgs/z/zfdbms/v0_0_2";

    inputs."zfdbms-v0_0_3".type = "github";
  inputs."zfdbms-v0_0_3".owner = "riinr";
  inputs."zfdbms-v0_0_3".repo = "flake-nimble";
  inputs."zfdbms-v0_0_3".ref = "flake-pinning";
  inputs."zfdbms-v0_0_3".dir = "nimpkgs/z/zfdbms/v0_0_3";

    inputs."zfdbms-v0_0_4".type = "github";
  inputs."zfdbms-v0_0_4".owner = "riinr";
  inputs."zfdbms-v0_0_4".repo = "flake-nimble";
  inputs."zfdbms-v0_0_4".ref = "flake-pinning";
  inputs."zfdbms-v0_0_4".dir = "nimpkgs/z/zfdbms/v0_0_4";

    inputs."zfdbms-v0_0_5".type = "github";
  inputs."zfdbms-v0_0_5".owner = "riinr";
  inputs."zfdbms-v0_0_5".repo = "flake-nimble";
  inputs."zfdbms-v0_0_5".ref = "flake-pinning";
  inputs."zfdbms-v0_0_5".dir = "nimpkgs/z/zfdbms/v0_0_5";

    inputs."zfdbms-v0_0_6".type = "github";
  inputs."zfdbms-v0_0_6".owner = "riinr";
  inputs."zfdbms-v0_0_6".repo = "flake-nimble";
  inputs."zfdbms-v0_0_6".ref = "flake-pinning";
  inputs."zfdbms-v0_0_6".dir = "nimpkgs/z/zfdbms/v0_0_6";

    inputs."zfdbms-v0_0_7".type = "github";
  inputs."zfdbms-v0_0_7".owner = "riinr";
  inputs."zfdbms-v0_0_7".repo = "flake-nimble";
  inputs."zfdbms-v0_0_7".ref = "flake-pinning";
  inputs."zfdbms-v0_0_7".dir = "nimpkgs/z/zfdbms/v0_0_7";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}