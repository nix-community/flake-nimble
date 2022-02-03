{
  description = ''A pattern matching library'';
  inputs.src-gara-master.flake = false;
  inputs.src-gara-master.type = "github";
  inputs.src-gara-master.owner = "alehander42";
  inputs.src-gara-master.repo = "gara";
  inputs.src-gara-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gara-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gara-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gara-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}