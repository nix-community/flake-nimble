{
  description = ''Integrate nim projects in the C++Builder build process'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimcb-master.flake = false;
  inputs.src-nimcb-master.type = "github";
  inputs.src-nimcb-master.owner = "AdrianV";
  inputs.src-nimcb-master.repo = "nimcb";
  inputs.src-nimcb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}