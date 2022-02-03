{
  description = ''The SHIORI DLL interface'';
  inputs.src-shioridll-v1_0_1.flake = false;
  inputs.src-shioridll-v1_0_1.type = "github";
  inputs.src-shioridll-v1_0_1.owner = "Narazaka";
  inputs.src-shioridll-v1_0_1.repo = "shioridll-nim";
  inputs.src-shioridll-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, src-shioridll-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shioridll-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shioridll-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}