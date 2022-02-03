{
  description = ''Simple 'with' macro for Nim'';
  inputs.src-with-v0_1_0.flake = false;
  inputs.src-with-v0_1_0.type = "github";
  inputs.src-with-v0_1_0.owner = "zevv";
  inputs.src-with-v0_1_0.repo = "with";
  inputs.src-with-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-with-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-with-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-with-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}