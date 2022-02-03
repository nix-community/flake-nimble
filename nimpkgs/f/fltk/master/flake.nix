{
  description = ''The Fast-Light Tool Kit'';
  inputs.src-fltk-master.flake = false;
  inputs.src-fltk-master.type = "github";
  inputs.src-fltk-master.owner = "Skrylar";
  inputs.src-fltk-master.repo = "nfltk";
  inputs.src-fltk-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fltk-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fltk-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fltk-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}