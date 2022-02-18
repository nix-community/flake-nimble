{
  description = ''USIG Argentina Government MultiSync API Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-usigar-master.flake = false;
  inputs.src-usigar-master.type = "github";
  inputs.src-usigar-master.owner = "juancarlospaco";
  inputs.src-usigar-master.repo = "nim-usigar";
  inputs.src-usigar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-usigar-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-usigar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-usigar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}