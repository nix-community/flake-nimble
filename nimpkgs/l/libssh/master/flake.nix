{
  description = ''libssh FFI bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libssh-master.flake = false;
  inputs.src-libssh-master.type = "github";
  inputs.src-libssh-master.owner = "dariolah";
  inputs.src-libssh-master.repo = "libssh-nim";
  inputs.src-libssh-master.ref = "refs/heads/master";
  inputs.src-libssh-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libssh-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libssh-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libssh-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}