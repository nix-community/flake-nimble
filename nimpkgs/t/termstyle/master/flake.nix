{
  description = ''Easy to use styles for terminal output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-termstyle-master.flake = false;
  inputs.src-termstyle-master.type = "github";
  inputs.src-termstyle-master.owner = "PMunch";
  inputs.src-termstyle-master.repo = "termstyle";
  inputs.src-termstyle-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-termstyle-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-termstyle-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-termstyle-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}