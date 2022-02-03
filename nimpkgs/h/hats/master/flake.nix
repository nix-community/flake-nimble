{
  description = ''Various kinds of hashed array trees.'';
  inputs.src-hats-master.flake = false;
  inputs.src-hats-master.type = "github";
  inputs.src-hats-master.owner = "davidgarland";
  inputs.src-hats-master.repo = "nim-hats";
  inputs.src-hats-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-hats-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hats-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hats-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}