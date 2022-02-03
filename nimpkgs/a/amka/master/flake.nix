{
  description = ''A validator for greek social security number (AMKA)'';
  inputs.src-amka-master.flake = false;
  inputs.src-amka-master.type = "github";
  inputs.src-amka-master.owner = "zoispag";
  inputs.src-amka-master.repo = "amka-nim";
  inputs.src-amka-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-amka-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-amka-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-amka-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}