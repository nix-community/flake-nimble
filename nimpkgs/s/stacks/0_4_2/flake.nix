{
  description = ''Pure Nim stack implementation based on sequences.'';
  inputs.src-stacks-0_4_2.flake = false;
  inputs.src-stacks-0_4_2.type = "github";
  inputs.src-stacks-0_4_2.owner = "rustomax";
  inputs.src-stacks-0_4_2.repo = "nim-stacks";
  inputs.src-stacks-0_4_2.ref = "refs/tags/0.4.2";
  
  outputs = { self, nixpkgs, src-stacks-0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stacks-0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stacks-0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}