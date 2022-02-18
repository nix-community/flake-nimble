{
  description = ''YAML 1.2 implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-yaml-master.flake = false;
  inputs.src-yaml-master.type = "github";
  inputs.src-yaml-master.owner = "flyx";
  inputs.src-yaml-master.repo = "NimYAML";
  inputs.src-yaml-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-yaml-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-yaml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-yaml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}