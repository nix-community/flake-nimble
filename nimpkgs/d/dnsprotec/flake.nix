{
  description = ''DNS /etc/hosts file manager, Block 1 Million malicious domains with 1 command'';
  inputs."dnsprotec-master".url = "path:./master";
  inputs."dnsprotec-0_0_1".url = "path:./0_0_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}