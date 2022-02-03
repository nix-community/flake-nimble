{
  description = ''pnm is library for PNM (Portable AnyMap).'';
  inputs.src-pnm-v2_0_1.flake = false;
  inputs.src-pnm-v2_0_1.type = "github";
  inputs.src-pnm-v2_0_1.owner = "jiro4989";
  inputs.src-pnm-v2_0_1.repo = "pnm";
  inputs.src-pnm-v2_0_1.ref = "refs/tags/v2.0.1";
  
  outputs = { self, nixpkgs, src-pnm-v2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pnm-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pnm-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}