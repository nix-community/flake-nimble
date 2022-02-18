{
  description = ''A library for rendering text with paranim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-paratext-master.flake = false;
  inputs.src-paratext-master.type = "github";
  inputs.src-paratext-master.owner = "paranim";
  inputs.src-paratext-master.repo = "paratext";
  inputs.src-paratext-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-paratext-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paratext-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paratext-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}