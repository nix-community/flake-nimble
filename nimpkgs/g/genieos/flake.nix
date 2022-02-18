{
  description = ''Too awesome procs to be included in nimrod.os module'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."genieos-master".type = "github";
  inputs."genieos-master".owner = "riinr";
  inputs."genieos-master".repo = "flake-nimble";
  inputs."genieos-master".ref = "flake-pinning";
  inputs."genieos-master".dir = "nimpkgs/g/genieos/master";

    inputs."genieos-v9_0_0-taeyeon".type = "github";
  inputs."genieos-v9_0_0-taeyeon".owner = "riinr";
  inputs."genieos-v9_0_0-taeyeon".repo = "flake-nimble";
  inputs."genieos-v9_0_0-taeyeon".ref = "flake-pinning";
  inputs."genieos-v9_0_0-taeyeon".dir = "nimpkgs/g/genieos/v9_0_0-taeyeon";

    inputs."genieos-v9_0_1-jessica".type = "github";
  inputs."genieos-v9_0_1-jessica".owner = "riinr";
  inputs."genieos-v9_0_1-jessica".repo = "flake-nimble";
  inputs."genieos-v9_0_1-jessica".ref = "flake-pinning";
  inputs."genieos-v9_0_1-jessica".dir = "nimpkgs/g/genieos/v9_0_1-jessica";

    inputs."genieos-v9_2_0-sunny".type = "github";
  inputs."genieos-v9_2_0-sunny".owner = "riinr";
  inputs."genieos-v9_2_0-sunny".repo = "flake-nimble";
  inputs."genieos-v9_2_0-sunny".ref = "flake-pinning";
  inputs."genieos-v9_2_0-sunny".dir = "nimpkgs/g/genieos/v9_2_0-sunny";

    inputs."genieos-v9_4_0-tiffany".type = "github";
  inputs."genieos-v9_4_0-tiffany".owner = "riinr";
  inputs."genieos-v9_4_0-tiffany".repo = "flake-nimble";
  inputs."genieos-v9_4_0-tiffany".ref = "flake-pinning";
  inputs."genieos-v9_4_0-tiffany".dir = "nimpkgs/g/genieos/v9_4_0-tiffany";

    inputs."genieos-v9_4_2-hyoyeon".type = "github";
  inputs."genieos-v9_4_2-hyoyeon".owner = "riinr";
  inputs."genieos-v9_4_2-hyoyeon".repo = "flake-nimble";
  inputs."genieos-v9_4_2-hyoyeon".ref = "flake-pinning";
  inputs."genieos-v9_4_2-hyoyeon".dir = "nimpkgs/g/genieos/v9_4_2-hyoyeon";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}