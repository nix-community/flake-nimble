{
  description = ''A tqdm-style progress bar in Nim'';
  inputs."suru-master".url = "path:./master";
  inputs."suru-v0_3_0".url = "path:./v0_3_0";
  inputs."suru-v0_3_1".url = "path:./v0_3_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}