{
  description = ''A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."quickcrypt-master".type = "github";
  inputs."quickcrypt-master".owner = "riinr";
  inputs."quickcrypt-master".repo = "flake-nimble";
  inputs."quickcrypt-master".ref = "flake-pinning";
  inputs."quickcrypt-master".dir = "nimpkgs/q/quickcrypt/master";

    inputs."quickcrypt-0_1_0".type = "github";
  inputs."quickcrypt-0_1_0".owner = "riinr";
  inputs."quickcrypt-0_1_0".repo = "flake-nimble";
  inputs."quickcrypt-0_1_0".ref = "flake-pinning";
  inputs."quickcrypt-0_1_0".dir = "nimpkgs/q/quickcrypt/0_1_0";

    inputs."quickcrypt-0_1_1".type = "github";
  inputs."quickcrypt-0_1_1".owner = "riinr";
  inputs."quickcrypt-0_1_1".repo = "flake-nimble";
  inputs."quickcrypt-0_1_1".ref = "flake-pinning";
  inputs."quickcrypt-0_1_1".dir = "nimpkgs/q/quickcrypt/0_1_1";

    inputs."quickcrypt-0_1_2".type = "github";
  inputs."quickcrypt-0_1_2".owner = "riinr";
  inputs."quickcrypt-0_1_2".repo = "flake-nimble";
  inputs."quickcrypt-0_1_2".ref = "flake-pinning";
  inputs."quickcrypt-0_1_2".dir = "nimpkgs/q/quickcrypt/0_1_2";

    inputs."quickcrypt-0_1_3".type = "github";
  inputs."quickcrypt-0_1_3".owner = "riinr";
  inputs."quickcrypt-0_1_3".repo = "flake-nimble";
  inputs."quickcrypt-0_1_3".ref = "flake-pinning";
  inputs."quickcrypt-0_1_3".dir = "nimpkgs/q/quickcrypt/0_1_3";

    inputs."quickcrypt-0_1_4".type = "github";
  inputs."quickcrypt-0_1_4".owner = "riinr";
  inputs."quickcrypt-0_1_4".repo = "flake-nimble";
  inputs."quickcrypt-0_1_4".ref = "flake-pinning";
  inputs."quickcrypt-0_1_4".dir = "nimpkgs/q/quickcrypt/0_1_4";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}