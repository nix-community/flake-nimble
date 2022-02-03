{
  description = ''A parser combinator library for easy generation of complex parsers'';
  inputs.src-combparser-master.flake = false;
  inputs.src-combparser-master.type = "github";
  inputs.src-combparser-master.owner = "PMunch";
  inputs.src-combparser-master.repo = "combparser";
  inputs.src-combparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-combparser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-combparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-combparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}