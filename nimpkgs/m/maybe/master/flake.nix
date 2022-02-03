{
  description = ''basic monadic maybe type for Nim'';
  inputs.src-maybe-master.flake = false;
  inputs.src-maybe-master.type = "github";
  inputs.src-maybe-master.owner = "superfunc";
  inputs.src-maybe-master.repo = "maybe";
  inputs.src-maybe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-maybe-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-maybe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-maybe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}