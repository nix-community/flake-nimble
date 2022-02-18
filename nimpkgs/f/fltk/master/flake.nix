{
  description = ''The Fast-Light Tool Kit'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fltk-master.flake = false;
  inputs.src-fltk-master.type = "github";
  inputs.src-fltk-master.owner = "Skrylar";
  inputs.src-fltk-master.repo = "nfltk";
  inputs.src-fltk-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fltk-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fltk-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fltk-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}