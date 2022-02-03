{
  description = ''PROXY Protocol enabler for aged programs'';
  inputs."proxyproto-master".url = "path:./master";
  inputs."proxyproto-0_1_0".url = "path:./0_1_0";
  inputs."proxyproto-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}