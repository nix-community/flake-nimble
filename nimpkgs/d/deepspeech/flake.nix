{
  description = ''Nim bindings for mozilla's DeepSpeech model.'';
  inputs."deepspeech-master".url = "path:./master";
  inputs."deepspeech-v0_7_0".url = "path:./v0_7_0";
  inputs."deepspeech-v0_7_1".url = "path:./v0_7_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}