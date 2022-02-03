{
  description = ''Nim wrapper for libbacktrace'';
  inputs.src-libbacktrace-master.flake = false;
  inputs.src-libbacktrace-master.type = "github";
  inputs.src-libbacktrace-master.owner = "status-im";
  inputs.src-libbacktrace-master.repo = "nim-libbacktrace";
  inputs.src-libbacktrace-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libbacktrace-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libbacktrace-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libbacktrace-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}