{
  description = ''Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver'';
  inputs.src-primme-v2_0_0.flake = false;
  inputs.src-primme-v2_0_0.type = "github";
  inputs.src-primme-v2_0_0.owner = "jxy";
  inputs.src-primme-v2_0_0.repo = "primme";
  inputs.src-primme-v2_0_0.ref = "refs/tags/v2.0.0";
  
  outputs = { self, nixpkgs, src-primme-v2_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-primme-v2_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-primme-v2_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}