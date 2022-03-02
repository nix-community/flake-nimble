{
  description = ''Nim wrapper for libssh2'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libssh2-master.flake = false;
  inputs.src-libssh2-master.type = "github";
  inputs.src-libssh2-master.owner = "ba0f3";
  inputs.src-libssh2-master.repo = "libssh2.nim";
  inputs.src-libssh2-master.ref = "refs/heads/master";
  inputs.src-libssh2-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libssh2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libssh2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libssh2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}