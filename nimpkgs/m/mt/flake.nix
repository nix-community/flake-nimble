{
  description = ''A simple TLDR pages client'';
  inputs."mt-main".url = "path:./main";
  inputs."mt-0_1_0".url = "path:./0_1_0";
  inputs."mt-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}