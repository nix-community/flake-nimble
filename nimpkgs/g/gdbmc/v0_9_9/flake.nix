{
  description = ''This library is a wrapper to C GDBM library'';
  inputs.src-gdbmc-v0_9_9.flake = false;
  inputs.src-gdbmc-v0_9_9.type = "github";
  inputs.src-gdbmc-v0_9_9.owner = "vycb";
  inputs.src-gdbmc-v0_9_9.repo = "gdbmc.nim";
  inputs.src-gdbmc-v0_9_9.ref = "refs/tags/v0.9.9";
  
  outputs = { self, nixpkgs, src-gdbmc-v0_9_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gdbmc-v0_9_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gdbmc-v0_9_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}