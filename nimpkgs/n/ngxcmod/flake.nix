{
  description = ''High level wrapper for build nginx module w/ nginx-c-function'';
  inputs."ngxcmod-master".url = "path:./master";
  inputs."ngxcmod-0_1_2".url = "path:./0_1_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}