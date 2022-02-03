{
  description = ''Nim wrapper for libbacktrace'';
  inputs.src-libbacktrace-v0_0_2.flake = false;
  inputs.src-libbacktrace-v0_0_2.type = "github";
  inputs.src-libbacktrace-v0_0_2.owner = "status-im";
  inputs.src-libbacktrace-v0_0_2.repo = "nim-libbacktrace";
  inputs.src-libbacktrace-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-libbacktrace-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libbacktrace-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libbacktrace-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}