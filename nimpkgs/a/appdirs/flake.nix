{
  description = ''A utility library to find the directory you need to app in.'';
  inputs."appdirs-master".url = "path:./master";
  inputs."appdirs-0_1_0".url = "path:./0_1_0";
  inputs."appdirs-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}