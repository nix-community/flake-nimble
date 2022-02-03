{
  description = ''A small but practical concatenative programming language and shell.'';
  inputs.src-min-master.flake = false;
  inputs.src-min-master.type = "github";
  inputs.src-min-master.owner = "h3rald";
  inputs.src-min-master.repo = "min";
  inputs.src-min-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-min-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-min-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}