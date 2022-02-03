{
  description = ''Old Win API library for Nim'';
  inputs.src-oldwinapi-master.flake = false;
  inputs.src-oldwinapi-master.type = "github";
  inputs.src-oldwinapi-master.owner = "nim-lang";
  inputs.src-oldwinapi-master.repo = "oldwinapi";
  inputs.src-oldwinapi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-oldwinapi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oldwinapi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oldwinapi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}