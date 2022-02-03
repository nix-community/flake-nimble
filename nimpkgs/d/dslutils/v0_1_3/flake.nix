{
  description = ''A macro collection for creating DSL in nim'';
  inputs.src-dslutils-v0_1_3.flake = false;
  inputs.src-dslutils-v0_1_3.type = "github";
  inputs.src-dslutils-v0_1_3.owner = "codehz";
  inputs.src-dslutils-v0_1_3.repo = "dslutils";
  inputs.src-dslutils-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-dslutils-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dslutils-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dslutils-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}