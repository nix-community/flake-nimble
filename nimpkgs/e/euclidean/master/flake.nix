{
  description = ''Euclidean Division & Euclidean Modulo'';
  inputs.src-euclidean-master.flake = false;
  inputs.src-euclidean-master.type = "github";
  inputs.src-euclidean-master.owner = "juancarlospaco";
  inputs.src-euclidean-master.repo = "nim-euclidean";
  inputs.src-euclidean-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-euclidean-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-euclidean-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-euclidean-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}