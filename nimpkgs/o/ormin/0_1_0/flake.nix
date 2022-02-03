{
  description = ''Prepared SQL statement generator. A lightweight ORM.'';
  inputs.src-ormin-0_1_0.flake = false;
  inputs.src-ormin-0_1_0.type = "github";
  inputs.src-ormin-0_1_0.owner = "Araq";
  inputs.src-ormin-0_1_0.repo = "ormin";
  inputs.src-ormin-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-ormin-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ormin-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ormin-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}