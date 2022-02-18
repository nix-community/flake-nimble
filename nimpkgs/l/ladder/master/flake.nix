{
  description = ''Ladder logic macros for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ladder-master.flake = false;
  inputs.src-ladder-master.type = "gitlab";
  inputs.src-ladder-master.owner = "ryukoposting";
  inputs.src-ladder-master.repo = "nim-ladder";
  inputs.src-ladder-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ladder-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ladder-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ladder-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}