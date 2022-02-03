{
  description = ''Find and Edit Utility'';
  inputs.src-fae-v1_0_0.flake = false;
  inputs.src-fae-v1_0_0.type = "github";
  inputs.src-fae-v1_0_0.owner = "h3rald";
  inputs.src-fae-v1_0_0.repo = "fae";
  inputs.src-fae-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-fae-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fae-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fae-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}