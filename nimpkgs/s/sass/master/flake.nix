{
  description = ''A wrapper for the libsass library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sass-master.flake = false;
  inputs.src-sass-master.type = "github";
  inputs.src-sass-master.owner = "dom96";
  inputs.src-sass-master.repo = "sass";
  inputs.src-sass-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sass-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}