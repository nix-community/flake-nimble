{
  description = ''A pure nim port of the open simplex noise algorithm from Kurt Spencer'';
  inputs."opensimplexnoise-main".url = "path:./main";
  inputs."opensimplexnoise-0_1_0".url = "path:./0_1_0";
  inputs."opensimplexnoise-0_2_0".url = "path:./0_2_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}