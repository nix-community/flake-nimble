{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
  inputs.src-hastyscribe-v1_12_5.flake = false;
  inputs.src-hastyscribe-v1_12_5.type = "github";
  inputs.src-hastyscribe-v1_12_5.owner = "h3rald";
  inputs.src-hastyscribe-v1_12_5.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_12_5.ref = "refs/tags/v1.12.5";
  
  outputs = { self, nixpkgs, src-hastyscribe-v1_12_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_12_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastyscribe-v1_12_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}