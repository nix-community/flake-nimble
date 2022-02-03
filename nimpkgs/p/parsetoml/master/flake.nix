{
  description = ''Library for parsing TOML files.'';
  inputs.src-parsetoml-master.flake = false;
  inputs.src-parsetoml-master.type = "github";
  inputs.src-parsetoml-master.owner = "NimParsers";
  inputs.src-parsetoml-master.repo = "parsetoml";
  inputs.src-parsetoml-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-parsetoml-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsetoml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-parsetoml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}