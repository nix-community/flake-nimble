{
  description = ''Command to add counter suffix/prefix to a list of files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."number_files-master".type = "github";
  inputs."number_files-master".owner = "riinr";
  inputs."number_files-master".repo = "flake-nimble";
  inputs."number_files-master".ref = "flake-pinning";
  inputs."number_files-master".dir = "nimpkgs/n/number_files/master";

    inputs."number_files-v0_2_0".type = "github";
  inputs."number_files-v0_2_0".owner = "riinr";
  inputs."number_files-v0_2_0".repo = "flake-nimble";
  inputs."number_files-v0_2_0".ref = "flake-pinning";
  inputs."number_files-v0_2_0".dir = "nimpkgs/n/number_files/v0_2_0";

    inputs."number_files-v0_2_2".type = "github";
  inputs."number_files-v0_2_2".owner = "riinr";
  inputs."number_files-v0_2_2".repo = "flake-nimble";
  inputs."number_files-v0_2_2".ref = "flake-pinning";
  inputs."number_files-v0_2_2".dir = "nimpkgs/n/number_files/v0_2_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}