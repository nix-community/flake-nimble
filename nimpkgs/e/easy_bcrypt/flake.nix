{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."easy_bcrypt-master".type = "github";
  inputs."easy_bcrypt-master".owner = "riinr";
  inputs."easy_bcrypt-master".repo = "flake-nimble";
  inputs."easy_bcrypt-master".ref = "flake-pinning";
  inputs."easy_bcrypt-master".dir = "nimpkgs/e/easy_bcrypt/master";

    inputs."easy_bcrypt-1_0_0".type = "github";
  inputs."easy_bcrypt-1_0_0".owner = "riinr";
  inputs."easy_bcrypt-1_0_0".repo = "flake-nimble";
  inputs."easy_bcrypt-1_0_0".ref = "flake-pinning";
  inputs."easy_bcrypt-1_0_0".dir = "nimpkgs/e/easy_bcrypt/1_0_0";

    inputs."easy_bcrypt-1_0_1".type = "github";
  inputs."easy_bcrypt-1_0_1".owner = "riinr";
  inputs."easy_bcrypt-1_0_1".repo = "flake-nimble";
  inputs."easy_bcrypt-1_0_1".ref = "flake-pinning";
  inputs."easy_bcrypt-1_0_1".dir = "nimpkgs/e/easy_bcrypt/1_0_1";

    inputs."easy_bcrypt-2_0_0".type = "github";
  inputs."easy_bcrypt-2_0_0".owner = "riinr";
  inputs."easy_bcrypt-2_0_0".repo = "flake-nimble";
  inputs."easy_bcrypt-2_0_0".ref = "flake-pinning";
  inputs."easy_bcrypt-2_0_0".dir = "nimpkgs/e/easy_bcrypt/2_0_0";

    inputs."easy_bcrypt-2_0_1".type = "github";
  inputs."easy_bcrypt-2_0_1".owner = "riinr";
  inputs."easy_bcrypt-2_0_1".repo = "flake-nimble";
  inputs."easy_bcrypt-2_0_1".ref = "flake-pinning";
  inputs."easy_bcrypt-2_0_1".dir = "nimpkgs/e/easy_bcrypt/2_0_1";

    inputs."easy_bcrypt-2_0_2".type = "github";
  inputs."easy_bcrypt-2_0_2".owner = "riinr";
  inputs."easy_bcrypt-2_0_2".repo = "flake-nimble";
  inputs."easy_bcrypt-2_0_2".ref = "flake-pinning";
  inputs."easy_bcrypt-2_0_2".dir = "nimpkgs/e/easy_bcrypt/2_0_2";

    inputs."easy_bcrypt-2_0_3".type = "github";
  inputs."easy_bcrypt-2_0_3".owner = "riinr";
  inputs."easy_bcrypt-2_0_3".repo = "flake-nimble";
  inputs."easy_bcrypt-2_0_3".ref = "flake-pinning";
  inputs."easy_bcrypt-2_0_3".dir = "nimpkgs/e/easy_bcrypt/2_0_3";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}