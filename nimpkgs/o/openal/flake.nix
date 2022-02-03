{
  description = ''An OpenAL wrapper.'';
  inputs."openal-master".url = "path:./master";
  inputs."openal-0_1_1".url = "path:./0_1_1";
  inputs."openal-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}