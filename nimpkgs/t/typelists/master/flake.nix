{
  description = ''Typelists in Nim'';
  inputs.src-typelists-master.flake = false;
  inputs.src-typelists-master.type = "github";
  inputs.src-typelists-master.owner = "yglukhov";
  inputs.src-typelists-master.repo = "typelists";
  inputs.src-typelists-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-typelists-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-typelists-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-typelists-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}