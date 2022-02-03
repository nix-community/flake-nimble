{
  description = ''Nim wrapper for libbacktrace'';
  inputs.src-libbacktrace-v0_0_4.flake = false;
  inputs.src-libbacktrace-v0_0_4.type = "github";
  inputs.src-libbacktrace-v0_0_4.owner = "status-im";
  inputs.src-libbacktrace-v0_0_4.repo = "nim-libbacktrace";
  inputs.src-libbacktrace-v0_0_4.ref = "refs/tags/v0.0.4";
  
  outputs = { self, nixpkgs, src-libbacktrace-v0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libbacktrace-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libbacktrace-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}