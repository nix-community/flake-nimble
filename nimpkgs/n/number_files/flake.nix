{
  description = ''Command to add counter suffix/prefix to a list of files.'';
  inputs."number_files-master".url = "path:./master";
  inputs."number_files-v0_2_0".url = "path:./v0_2_0";
  inputs."number_files-v0_2_2".url = "path:./v0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}