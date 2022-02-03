{
  description = ''Pure Nim stack implementation based on sequences.'';
  inputs.src-stacks-0_4_1.flake = false;
  inputs.src-stacks-0_4_1.type = "github";
  inputs.src-stacks-0_4_1.owner = "rustomax";
  inputs.src-stacks-0_4_1.repo = "nim-stacks";
  inputs.src-stacks-0_4_1.ref = "refs/tags/0.4.1";
  
  outputs = { self, nixpkgs, src-stacks-0_4_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stacks-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stacks-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}