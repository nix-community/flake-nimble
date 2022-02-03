{
  description = ''Convert strings to a slug. Can be used for URLs, file names, IDs etc.'';
  inputs."slugify-main".url = "path:./main";
  inputs."slugify-v0_1_0".url = "path:./v0_1_0";
  inputs."slugify-v0_2_0".url = "path:./v0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}