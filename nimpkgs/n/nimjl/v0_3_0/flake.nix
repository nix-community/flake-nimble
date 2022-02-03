{
  description = ''Nim Julia bridge'';
  inputs.src-nimjl-v0_3_0.flake = false;
  inputs.src-nimjl-v0_3_0.type = "github";
  inputs.src-nimjl-v0_3_0.owner = "Clonkk";
  inputs.src-nimjl-v0_3_0.repo = "nimjl";
  inputs.src-nimjl-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-nimjl-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimjl-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimjl-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}