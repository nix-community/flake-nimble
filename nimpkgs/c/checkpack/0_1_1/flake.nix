{
  description = ''Tiny library to check if a system package is already installed.'';
  inputs.src-checkpack-0_1_1.flake = false;
  inputs.src-checkpack-0_1_1.type = "gitlab";
  inputs.src-checkpack-0_1_1.owner = "EchoPouet";
  inputs.src-checkpack-0_1_1.repo = "checkpack";
  inputs.src-checkpack-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-checkpack-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-checkpack-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-checkpack-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}