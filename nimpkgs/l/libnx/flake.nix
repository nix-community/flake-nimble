{
  description = ''A port of libnx to Nim'';
  inputs."libnx-master".url = "path:./master";
  inputs."libnx-0_1_6".url = "path:./0_1_6";
  inputs."libnx-0_1_8".url = "path:./0_1_8";
  inputs."libnx-0_2_1".url = "path:./0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}