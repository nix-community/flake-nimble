{
  description = ''Module for working with rational numbers (fractions)'';
  inputs.src-nimrat-master.flake = false;
  inputs.src-nimrat-master.type = "github";
  inputs.src-nimrat-master.owner = "apense";
  inputs.src-nimrat-master.repo = "nimrat";
  inputs.src-nimrat-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimrat-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimrat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}