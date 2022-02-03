{
  description = ''SSH, SCP and SFTP client for Nim'';
  inputs.src-ssh2-0_1_1.flake = false;
  inputs.src-ssh2-0_1_1.type = "github";
  inputs.src-ssh2-0_1_1.owner = "ba0f3";
  inputs.src-ssh2-0_1_1.repo = "ssh2.nim";
  inputs.src-ssh2-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."libssh2".url = "path:../../../l/libssh2";
  inputs."libssh2".type = "github";
  inputs."libssh2".owner = "riinr";
  inputs."libssh2".repo = "flake-nimble";
  inputs."libssh2".ref = "flake-pinning";
  inputs."libssh2".dir = "nimpkgs/l/libssh2";

  outputs = { self, nixpkgs, src-ssh2-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ssh2-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ssh2-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}