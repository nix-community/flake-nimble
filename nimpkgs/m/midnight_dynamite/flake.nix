{
  description = ''Wrapper for the markdown rendering hoedown library'';
  inputs."midnight_dynamite-master".url = "path:./master";
  inputs."midnight_dynamite-v0_2_0".url = "path:./v0_2_0";
  inputs."midnight_dynamite-v0_2_2".url = "path:./v0_2_2";
  inputs."midnight_dynamite-v0_2_4".url = "path:./v0_2_4";
  inputs."midnight_dynamite-v1_0_0".url = "path:./v1_0_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}