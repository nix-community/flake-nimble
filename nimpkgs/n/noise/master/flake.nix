{
  description = ''Nim implementation of linenoise command line editor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-noise-master.flake = false;
  inputs.src-noise-master.type = "github";
  inputs.src-noise-master.owner = "jangko";
  inputs.src-noise-master.repo = "nim-noise";
  inputs.src-noise-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-noise-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noise-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-noise-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}