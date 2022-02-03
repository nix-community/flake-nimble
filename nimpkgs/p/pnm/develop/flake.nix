{
  description = ''pnm is library for PNM (Portable AnyMap).'';
  inputs.src-pnm-develop.flake = false;
  inputs.src-pnm-develop.type = "github";
  inputs.src-pnm-develop.owner = "jiro4989";
  inputs.src-pnm-develop.repo = "pnm";
  inputs.src-pnm-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-pnm-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pnm-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pnm-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}