{
  description = ''A simple string templating library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-templates-master.flake = false;
  inputs.src-templates-master.type = "github";
  inputs.src-templates-master.owner = "onionhammer";
  inputs.src-templates-master.repo = "nim-templates";
  inputs.src-templates-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-templates-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-templates-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-templates-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}