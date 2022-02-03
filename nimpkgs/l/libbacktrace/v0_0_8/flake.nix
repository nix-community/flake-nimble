{
  description = ''Nim wrapper for libbacktrace'';
  inputs.src-libbacktrace-v0_0_8.flake = false;
  inputs.src-libbacktrace-v0_0_8.type = "github";
  inputs.src-libbacktrace-v0_0_8.owner = "status-im";
  inputs.src-libbacktrace-v0_0_8.repo = "nim-libbacktrace";
  inputs.src-libbacktrace-v0_0_8.ref = "refs/tags/v0.0.8";
  
  outputs = { self, nixpkgs, src-libbacktrace-v0_0_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libbacktrace-v0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libbacktrace-v0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}