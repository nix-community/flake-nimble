{
  description = ''Nim - Java bridge'';
  inputs.src-jnim-master.flake = false;
  inputs.src-jnim-master.type = "github";
  inputs.src-jnim-master.owner = "yglukhov";
  inputs.src-jnim-master.repo = "jnim";
  inputs.src-jnim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-jnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}