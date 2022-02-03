{
  description = ''Nim Semi-Auto Bug Report Tool'';
  inputs.src-nimbug-master.flake = false;
  inputs.src-nimbug-master.type = "github";
  inputs.src-nimbug-master.owner = "juancarlospaco";
  inputs.src-nimbug-master.repo = "nimbug";
  inputs.src-nimbug-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimbug-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbug-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbug-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}