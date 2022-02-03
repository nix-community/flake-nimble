{
  description = ''pnm is library for PNM (Portable AnyMap).'';
  inputs.src-pnm-v2_0_0.flake = false;
  inputs.src-pnm-v2_0_0.type = "github";
  inputs.src-pnm-v2_0_0.owner = "jiro4989";
  inputs.src-pnm-v2_0_0.repo = "pnm";
  inputs.src-pnm-v2_0_0.ref = "refs/tags/v2.0.0";
  
  outputs = { self, nixpkgs, src-pnm-v2_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pnm-v2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pnm-v2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}