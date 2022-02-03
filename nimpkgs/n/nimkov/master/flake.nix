{
  description = ''Text generator, based on Markov Chains (Markov text generator)'';
  inputs.src-nimkov-master.flake = false;
  inputs.src-nimkov-master.type = "github";
  inputs.src-nimkov-master.owner = "bit0r1n";
  inputs.src-nimkov-master.repo = "nimkov";
  inputs.src-nimkov-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimkov-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimkov-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimkov-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}