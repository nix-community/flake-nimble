{
  description = ''High level wrapper over OpenCL'';
  inputs."nimcl-master".url = "path:./master";
  inputs."nimcl-0_1_1".url = "path:./0_1_1";
  inputs."nimcl-0_1_2".url = "path:./0_1_2";
  inputs."nimcl-0_1_3".url = "path:./0_1_3";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}