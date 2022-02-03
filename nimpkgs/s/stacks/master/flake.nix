{
  description = ''Pure Nim stack implementation based on sequences.'';
  inputs.src-stacks-master.flake = false;
  inputs.src-stacks-master.type = "github";
  inputs.src-stacks-master.owner = "rustomax";
  inputs.src-stacks-master.repo = "nim-stacks";
  inputs.src-stacks-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stacks-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stacks-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stacks-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}