{
  description = ''various vector maths utils for nimrod'';
  inputs.src-vecmath-master.flake = false;
  inputs.src-vecmath-master.type = "github";
  inputs.src-vecmath-master.owner = "barcharcraz";
  inputs.src-vecmath-master.repo = "vecmath";
  inputs.src-vecmath-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vecmath-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vecmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vecmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}