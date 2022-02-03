{
  description = ''zopflipng-like png optimization'';
  inputs."zopflipng-master".url = "path:./master";
  inputs."zopflipng-v0_1_3".url = "path:./v0_1_3";
  inputs."zopflipng-v0_1_4".url = "path:./v0_1_4";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}