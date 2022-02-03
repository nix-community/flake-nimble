{
  description = ''Nim wrapper for libbacktrace'';
  inputs.src-libbacktrace-v0_0_7.flake = false;
  inputs.src-libbacktrace-v0_0_7.type = "github";
  inputs.src-libbacktrace-v0_0_7.owner = "status-im";
  inputs.src-libbacktrace-v0_0_7.repo = "nim-libbacktrace";
  inputs.src-libbacktrace-v0_0_7.ref = "refs/tags/v0.0.7";
  
  outputs = { self, nixpkgs, src-libbacktrace-v0_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libbacktrace-v0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libbacktrace-v0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}