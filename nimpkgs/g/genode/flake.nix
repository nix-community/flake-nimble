{
  description = ''System libraries for the Genode Operating System Framework'';
  inputs."genode-master".url = "path:./master";
  inputs."genode-v18_07".url = "path:./v18_07";
  inputs."genode-v18_08".url = "path:./v18_08";
  inputs."genode-v18_08_0".url = "path:./v18_08_0";
  inputs."genode-v18_11".url = "path:./v18_11";
  inputs."genode-v18_11_0".url = "path:./v18_11_0";
  inputs."genode-v18_11_1".url = "path:./v18_11_1";
  inputs."genode-v19_02".url = "path:./v19_02";
  inputs."genode-v19_05".url = "path:./v19_05";
  inputs."genode-v20_11".url = "path:./v20_11";
  inputs."genode-v20_11_1".url = "path:./v20_11_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}