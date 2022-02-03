{
  description = ''A collection of reusable modules and wrappers.'';
  inputs.src-fowltek-master.flake = false;
  inputs.src-fowltek-master.type = "github";
  inputs.src-fowltek-master.owner = "fowlmouth";
  inputs.src-fowltek-master.repo = "nimlibs";
  inputs.src-fowltek-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fowltek-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fowltek-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fowltek-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}