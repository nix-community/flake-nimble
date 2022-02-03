{
  description = ''Tiny library to check if a system package is already installed.'';
  inputs.src-checkpack-0_3_0.flake = false;
  inputs.src-checkpack-0_3_0.type = "gitlab";
  inputs.src-checkpack-0_3_0.owner = "EchoPouet";
  inputs.src-checkpack-0_3_0.repo = "checkpack";
  inputs.src-checkpack-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-checkpack-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-checkpack-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-checkpack-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}