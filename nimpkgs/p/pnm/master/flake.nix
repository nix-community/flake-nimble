{
  description = ''pnm is library for PNM (Portable AnyMap).'';
  inputs.src-pnm-master.flake = false;
  inputs.src-pnm-master.type = "github";
  inputs.src-pnm-master.owner = "jiro4989";
  inputs.src-pnm-master.repo = "pnm";
  inputs.src-pnm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pnm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pnm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pnm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}