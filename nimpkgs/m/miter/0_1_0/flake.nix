{
  description = ''Ratio calculator on your terminal'';
  inputs.src-miter-0_1_0.flake = false;
  inputs.src-miter-0_1_0.type = "github";
  inputs.src-miter-0_1_0.owner = "rafmst";
  inputs.src-miter-0_1_0.repo = "miter";
  inputs.src-miter-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-miter-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-miter-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-miter-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}