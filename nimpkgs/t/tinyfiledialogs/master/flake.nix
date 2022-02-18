{
  description = ''TinyFileDialogs for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tinyfiledialogs-master.flake = false;
  inputs.src-tinyfiledialogs-master.type = "github";
  inputs.src-tinyfiledialogs-master.owner = "juancarlospaco";
  inputs.src-tinyfiledialogs-master.repo = "nim-tinyfiledialogs";
  inputs.src-tinyfiledialogs-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tinyfiledialogs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tinyfiledialogs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tinyfiledialogs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}