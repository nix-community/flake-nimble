{
  description = ''`rm` files without fear'';
  inputs.src-crap-master.flake = false;
  inputs.src-crap-master.type = "github";
  inputs.src-crap-master.owner = "icyphox";
  inputs.src-crap-master.repo = "crap";
  inputs.src-crap-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-crap-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}