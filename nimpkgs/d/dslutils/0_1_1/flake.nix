{
  description = ''A macro collection for creating DSL in nim'';
  inputs.src-dslutils-0_1_1.flake = false;
  inputs.src-dslutils-0_1_1.type = "github";
  inputs.src-dslutils-0_1_1.owner = "codehz";
  inputs.src-dslutils-0_1_1.repo = "dslutils";
  inputs.src-dslutils-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-dslutils-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dslutils-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dslutils-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}