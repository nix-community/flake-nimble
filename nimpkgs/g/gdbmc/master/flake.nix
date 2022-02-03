{
  description = ''This library is a wrapper to C GDBM library'';
  inputs.src-gdbmc-master.flake = false;
  inputs.src-gdbmc-master.type = "github";
  inputs.src-gdbmc-master.owner = "vycb";
  inputs.src-gdbmc-master.repo = "gdbmc.nim";
  inputs.src-gdbmc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gdbmc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gdbmc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gdbmc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}