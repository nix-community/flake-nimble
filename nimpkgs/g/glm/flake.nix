{
  description = ''Port of c++ glm library with shader-like syntax'';
  inputs."glm-master".url = "path:./master";
  inputs."glm-v1_0_0".url = "path:./v1_0_0";
  inputs."glm-v1_0_1".url = "path:./v1_0_1";
  inputs."glm-v1_0_2".url = "path:./v1_0_2";
  inputs."glm-v1_1_0".url = "path:./v1_1_0";
  inputs."glm-v1_1_1".url = "path:./v1_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}