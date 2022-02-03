{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
  inputs.src-hastyscribe-v1_12_0.flake = false;
  inputs.src-hastyscribe-v1_12_0.type = "github";
  inputs.src-hastyscribe-v1_12_0.owner = "h3rald";
  inputs.src-hastyscribe-v1_12_0.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_12_0.ref = "refs/tags/v1.12.0";
  
  outputs = { self, nixpkgs, src-hastyscribe-v1_12_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_12_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastyscribe-v1_12_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}