{
  description = ''Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver'';
  inputs.src-primme-v2_1_1.flake = false;
  inputs.src-primme-v2_1_1.type = "github";
  inputs.src-primme-v2_1_1.owner = "jxy";
  inputs.src-primme-v2_1_1.repo = "primme";
  inputs.src-primme-v2_1_1.ref = "refs/tags/v2.1.1";
  
  outputs = { self, nixpkgs, src-primme-v2_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-primme-v2_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-primme-v2_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}