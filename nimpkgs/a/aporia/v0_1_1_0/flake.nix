{
  description = ''A Nim IDE.'';
  inputs.src-aporia-v0_1_1_0.flake = false;
  inputs.src-aporia-v0_1_1_0.type = "github";
  inputs.src-aporia-v0_1_1_0.owner = "nim-lang";
  inputs.src-aporia-v0_1_1_0.repo = "Aporia";
  inputs.src-aporia-v0_1_1_0.ref = "refs/tags/v0.1.1.0";
  
  outputs = { self, nixpkgs, src-aporia-v0_1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-aporia-v0_1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-aporia-v0_1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}