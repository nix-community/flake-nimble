{
  description = ''The SHIORI DLL interface'';
  inputs.src-shioridll-v1_0_0.flake = false;
  inputs.src-shioridll-v1_0_0.type = "github";
  inputs.src-shioridll-v1_0_0.owner = "Narazaka";
  inputs.src-shioridll-v1_0_0.repo = "shioridll-nim";
  inputs.src-shioridll-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-shioridll-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shioridll-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shioridll-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}