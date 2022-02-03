{
  description = ''Benchmarking wrapper around getrusage()'';
  inputs.src-getr-master.flake = false;
  inputs.src-getr-master.type = "github";
  inputs.src-getr-master.owner = "jrfondren";
  inputs.src-getr-master.repo = "getr-nim";
  inputs.src-getr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-getr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-getr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-getr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}