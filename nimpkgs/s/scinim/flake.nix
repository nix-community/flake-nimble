{
  description = ''The core types and functions of the SciNim ecosystem'';
  inputs."scinim-main".url = "path:./main";
  inputs."scinim-v0_1_0".url = "path:./v0_1_0";
  inputs."scinim-v0_2_2".url = "path:./v0_2_2";
  inputs."scinim-v0_2_3".url = "path:./v0_2_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}