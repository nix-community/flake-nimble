{
  description = ''Surfing is a highly functional CLI for Base64.'';
  inputs."surfing-develop".url = "path:./develop";
  inputs."surfing-main".url = "path:./main";
  inputs."surfing-ver_0_1_0".url = "path:./ver_0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}