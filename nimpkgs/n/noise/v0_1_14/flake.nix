{
  description = ''Nim implementation of linenoise command line editor'';
  inputs.src-noise-v0_1_14.flake = false;
  inputs.src-noise-v0_1_14.type = "github";
  inputs.src-noise-v0_1_14.owner = "jangko";
  inputs.src-noise-v0_1_14.repo = "nim-noise";
  inputs.src-noise-v0_1_14.ref = "refs/tags/v0.1.14";
  
  outputs = { self, nixpkgs, src-noise-v0_1_14, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noise-v0_1_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-noise-v0_1_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}