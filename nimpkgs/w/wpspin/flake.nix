{
  description = ''Full-featured WPS PIN generator'';
  inputs."wpspin-master".url = "path:./master";
  inputs."wpspin-0_3_0".url = "path:./0_3_0";
  inputs."wpspin-0_5_0".url = "path:./0_5_0";
  inputs."wpspin-0_5_1".url = "path:./0_5_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}