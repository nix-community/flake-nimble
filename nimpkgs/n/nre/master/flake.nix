{
  description = ''A better regular expression library'';
  inputs.src-nre-master.flake = false;
  inputs.src-nre-master.type = "github";
  inputs.src-nre-master.owner = "flaviut";
  inputs.src-nre-master.repo = "nre";
  inputs.src-nre-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nre-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nre-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nre-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}