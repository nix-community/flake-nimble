{
  description = ''a collection of useful macro functionalities'';
  inputs."macroplus-main".url = "path:./main";
  inputs."macroplus-0_1_17".url = "path:./0_1_17";
  inputs."macroplus-0_1_20".url = "path:./0_1_20";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}