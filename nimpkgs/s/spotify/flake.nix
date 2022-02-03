{
  description = ''A Nim wrapper for the Spotify Web API'';
  inputs."spotify-master".url = "path:./master";
  inputs."spotify-v0_1".url = "path:./v0_1";
  inputs."spotify-v0_1_1".url = "path:./v0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}