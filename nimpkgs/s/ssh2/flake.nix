{
  description = ''SSH, SCP and SFTP client for Nim'';
  inputs."ssh2-master".url = "path:./master";
  inputs."ssh2-0_1_0".url = "path:./0_1_0";
  inputs."ssh2-0_1_1".url = "path:./0_1_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}