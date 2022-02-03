{
  description = ''Flash ISO images to SD cards & USB drives, safely and easily.'';
  inputs."ballena_itcher-master".url = "path:./master";
  inputs."ballena_itcher-0_0_1".url = "path:./0_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}