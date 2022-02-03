{
  description = ''Time ago in words in Nim'';
  inputs.src-ago-master.flake = false;
  inputs.src-ago-master.type = "github";
  inputs.src-ago-master.owner = "daehee";
  inputs.src-ago-master.repo = "ago";
  inputs.src-ago-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ago-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ago-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ago-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}