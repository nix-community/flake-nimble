{
  description = ''Implementation of Unix crypt with support for Crypt-MD5, Crypt-SHA256 and Crypt-SHA512'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimcrypt-main".type = "github";
  inputs."nimcrypt-main".owner = "riinr";
  inputs."nimcrypt-main".repo = "flake-nimble";
  inputs."nimcrypt-main".ref = "flake-pinning";
  inputs."nimcrypt-main".dir = "nimpkgs/n/nimcrypt/main";

    inputs."nimcrypt-v0_0_6".type = "github";
  inputs."nimcrypt-v0_0_6".owner = "riinr";
  inputs."nimcrypt-v0_0_6".repo = "flake-nimble";
  inputs."nimcrypt-v0_0_6".ref = "flake-pinning";
  inputs."nimcrypt-v0_0_6".dir = "nimpkgs/n/nimcrypt/v0_0_6";

    inputs."nimcrypt-v0_0_7".type = "github";
  inputs."nimcrypt-v0_0_7".owner = "riinr";
  inputs."nimcrypt-v0_0_7".repo = "flake-nimble";
  inputs."nimcrypt-v0_0_7".ref = "flake-pinning";
  inputs."nimcrypt-v0_0_7".dir = "nimpkgs/n/nimcrypt/v0_0_7";

    inputs."nimcrypt-v0_0_8".type = "github";
  inputs."nimcrypt-v0_0_8".owner = "riinr";
  inputs."nimcrypt-v0_0_8".repo = "flake-nimble";
  inputs."nimcrypt-v0_0_8".ref = "flake-pinning";
  inputs."nimcrypt-v0_0_8".dir = "nimpkgs/n/nimcrypt/v0_0_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}