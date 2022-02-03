{
  description = ''PLZ Python PIP alternative'';
  inputs."plz-master".url = "path:./master";
  inputs."plz-0_0_1".url = "path:./0_0_1";
  inputs."plz-init".url = "path:./init";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}