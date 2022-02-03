{
  description = ''A library to retrieve the list of commonly used licenses from the SPDX License List.'';
  inputs."spdx_licenses-master".url = "path:./master";
  inputs."spdx_licenses-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}