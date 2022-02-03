{
  description = ''packedjson is an alternative Nim implementation for JSON. The JSON is essentially kept as a single string in order to save memory over a more traditional tree representation.'';
  inputs."packedjson-master".url = "path:./master";
  inputs."packedjson-0_1_0".url = "path:./0_1_0";
  inputs."packedjson-0_2_1".url = "path:./0_2_1";
  inputs."packedjson-0_2_2".url = "path:./0_2_2";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}