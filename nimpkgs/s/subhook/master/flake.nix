{
  description = ''subhook wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-subhook-master.flake = false;
  inputs.src-subhook-master.type = "github";
  inputs.src-subhook-master.owner = "ba0f3";
  inputs.src-subhook-master.repo = "subhook.nim";
  inputs.src-subhook-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-subhook-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subhook-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-subhook-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}