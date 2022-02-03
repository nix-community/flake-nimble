{
  description = ''Spurdification library and CLI'';
  inputs."spurdify-master".url = "path:./master";
  inputs."spurdify-0_0_2".url = "path:./0_0_2";
  inputs."spurdify-v0_0_4".url = "path:./v0_0_4";
  inputs."spurdify-v0_0_5".url = "path:./v0_0_5";
  inputs."spurdify-v0_0_6".url = "path:./v0_0_6";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}