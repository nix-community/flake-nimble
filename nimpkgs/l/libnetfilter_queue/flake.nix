{
  description = ''libnetfilter_queue wrapper for Nim'';
  inputs."libnetfilter_queue-master".url = "path:./master";
  inputs."libnetfilter_queue-0_1_0".url = "path:./0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}