{
  description = ''A port of mdbook to nim'';
  inputs."nimibook-main".url = "path:./main";
  inputs."nimibook-v0_2_0".url = "path:./v0_2_0";
  inputs."nimibook-v0_2_1".url = "path:./v0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}