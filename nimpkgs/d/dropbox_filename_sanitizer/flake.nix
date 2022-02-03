{
  description = ''Tool to clean up filenames shared on Dropbox'';
  inputs."dropbox_filename_sanitizer-master".url = "path:./master";
  inputs."dropbox_filename_sanitizer-v0_2_1".url = "path:./v0_2_1";
  inputs."dropbox_filename_sanitizer-v0_4_0".url = "path:./v0_4_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}