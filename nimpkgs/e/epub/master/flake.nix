{
  description = ''Module for working with EPUB e-book files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-epub-master.flake = false;
  inputs.src-epub-master.type = "github";
  inputs.src-epub-master.owner = "achesak";
  inputs.src-epub-master.repo = "nim-epub";
  inputs.src-epub-master.ref = "refs/heads/master";
  
  
  inputs."nim>=".type = "github";
  inputs."nim>=".owner = "riinr";
  inputs."nim>=".repo = "flake-nimble";
  inputs."nim>=".ref = "flake-pinning";
  inputs."nim>=".dir = "nimpkgs/n/nim>=";

  outputs = { self, nixpkgs, flakeNimbleLib, src-epub-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-epub-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-epub-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}