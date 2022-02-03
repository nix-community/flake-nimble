{
  description = ''Nim Game Library'';
  inputs.src-nimgl-master.flake = false;
  inputs.src-nimgl-master.type = "github";
  inputs.src-nimgl-master.owner = "nimgl";
  inputs.src-nimgl-master.repo = "nimgl";
  inputs.src-nimgl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimgl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimgl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}