{
  description = ''Wrapper for linenoise, a free, self-contained alternative to GNU readline.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-linenoise-master.flake = false;
  inputs.src-linenoise-master.type = "github";
  inputs.src-linenoise-master.owner = "fallingduck";
  inputs.src-linenoise-master.repo = "linenoise-nim";
  inputs.src-linenoise-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-linenoise-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linenoise-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-linenoise-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}