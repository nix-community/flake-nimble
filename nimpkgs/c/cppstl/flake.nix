{
  description = ''Bindings for the C++ Standard Template Library (STL)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."cppstl-master".type = "github";
  inputs."cppstl-master".owner = "riinr";
  inputs."cppstl-master".repo = "flake-nimble";
  inputs."cppstl-master".ref = "flake-pinning";
  inputs."cppstl-master".dir = "nimpkgs/c/cppstl/master";

    inputs."cppstl-v0_2_2".type = "github";
  inputs."cppstl-v0_2_2".owner = "riinr";
  inputs."cppstl-v0_2_2".repo = "flake-nimble";
  inputs."cppstl-v0_2_2".ref = "flake-pinning";
  inputs."cppstl-v0_2_2".dir = "nimpkgs/c/cppstl/v0_2_2";

    inputs."cppstl-v0_3_0".type = "github";
  inputs."cppstl-v0_3_0".owner = "riinr";
  inputs."cppstl-v0_3_0".repo = "flake-nimble";
  inputs."cppstl-v0_3_0".ref = "flake-pinning";
  inputs."cppstl-v0_3_0".dir = "nimpkgs/c/cppstl/v0_3_0";

    inputs."cppstl-v0_3_1".type = "github";
  inputs."cppstl-v0_3_1".owner = "riinr";
  inputs."cppstl-v0_3_1".repo = "flake-nimble";
  inputs."cppstl-v0_3_1".ref = "flake-pinning";
  inputs."cppstl-v0_3_1".dir = "nimpkgs/c/cppstl/v0_3_1";

    inputs."cppstl-v0_4_0".type = "github";
  inputs."cppstl-v0_4_0".owner = "riinr";
  inputs."cppstl-v0_4_0".repo = "flake-nimble";
  inputs."cppstl-v0_4_0".ref = "flake-pinning";
  inputs."cppstl-v0_4_0".dir = "nimpkgs/c/cppstl/v0_4_0";

    inputs."cppstl-v0_4_1".type = "github";
  inputs."cppstl-v0_4_1".owner = "riinr";
  inputs."cppstl-v0_4_1".repo = "flake-nimble";
  inputs."cppstl-v0_4_1".ref = "flake-pinning";
  inputs."cppstl-v0_4_1".dir = "nimpkgs/c/cppstl/v0_4_1";

    inputs."cppstl-v0_5_0".type = "github";
  inputs."cppstl-v0_5_0".owner = "riinr";
  inputs."cppstl-v0_5_0".repo = "flake-nimble";
  inputs."cppstl-v0_5_0".ref = "flake-pinning";
  inputs."cppstl-v0_5_0".dir = "nimpkgs/c/cppstl/v0_5_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}