{
  description = ''Nim wrapper for libbacktrace'';
  inputs.src-libbacktrace-v0_0_3.flake = false;
  inputs.src-libbacktrace-v0_0_3.type = "github";
  inputs.src-libbacktrace-v0_0_3.owner = "status-im";
  inputs.src-libbacktrace-v0_0_3.repo = "nim-libbacktrace";
  inputs.src-libbacktrace-v0_0_3.ref = "refs/tags/v0.0.3";
  
  outputs = { self, nixpkgs, src-libbacktrace-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libbacktrace-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libbacktrace-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}