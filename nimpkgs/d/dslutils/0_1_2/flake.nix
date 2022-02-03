{
  description = ''A macro collection for creating DSL in nim'';
  inputs.src-dslutils-0_1_2.flake = false;
  inputs.src-dslutils-0_1_2.type = "github";
  inputs.src-dslutils-0_1_2.owner = "codehz";
  inputs.src-dslutils-0_1_2.repo = "dslutils";
  inputs.src-dslutils-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-dslutils-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dslutils-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dslutils-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}