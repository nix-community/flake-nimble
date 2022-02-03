{
  description = ''HQ Trivia API wrapper for Nim'';
  inputs.src-nimhq-master.flake = false;
  inputs.src-nimhq-master.type = "github";
  inputs.src-nimhq-master.owner = "sillibird";
  inputs.src-nimhq-master.repo = "nimhq";
  inputs.src-nimhq-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimhq-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhq-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimhq-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}