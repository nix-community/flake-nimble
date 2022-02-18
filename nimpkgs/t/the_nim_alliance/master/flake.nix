{
  description = ''A Nim wrapper for TheBlueAlliance'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-the_nim_alliance-master.flake = false;
  inputs.src-the_nim_alliance-master.type = "github";
  inputs.src-the_nim_alliance-master.owner = "tervay";
  inputs.src-the_nim_alliance-master.repo = "the-nim-alliance";
  inputs.src-the_nim_alliance-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-the_nim_alliance-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-the_nim_alliance-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-the_nim_alliance-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}