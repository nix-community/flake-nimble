{
  description = ''Port of Python's html.escape and html.unescape to Nim'';
  inputs."htmlunescape-master".url = "path:./master";
  inputs."htmlunescape-v0_1".url = "path:./v0_1";
  inputs."htmlunescape-v0_2".url = "path:./v0_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}