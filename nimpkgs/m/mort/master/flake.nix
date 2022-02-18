{
  description = ''A dead code locator for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mort-master.flake = false;
  inputs.src-mort-master.type = "github";
  inputs.src-mort-master.owner = "jyapayne";
  inputs.src-mort-master.repo = "mort";
  inputs.src-mort-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mort-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mort-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mort-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}