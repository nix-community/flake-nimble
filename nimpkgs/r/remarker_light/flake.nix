{
  description = ''remarker_light is a command line tool for building a remark-based slideshow page very easily.'';
  inputs."remarker_light-master".url = "path:./master";
  inputs."remarker_light-1_0_0".url = "path:./1_0_0";
  inputs."remarker_light-1_0_1".url = "path:./1_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}