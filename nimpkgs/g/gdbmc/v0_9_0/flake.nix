{
  description = ''This library is a wrapper to C GDBM library'';
  inputs.src-gdbmc-v0_9_0.flake = false;
  inputs.src-gdbmc-v0_9_0.type = "github";
  inputs.src-gdbmc-v0_9_0.owner = "vycb";
  inputs.src-gdbmc-v0_9_0.repo = "gdbmc.nim";
  inputs.src-gdbmc-v0_9_0.ref = "refs/tags/v0.9.0";
  
  outputs = { self, nixpkgs, src-gdbmc-v0_9_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gdbmc-v0_9_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gdbmc-v0_9_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}