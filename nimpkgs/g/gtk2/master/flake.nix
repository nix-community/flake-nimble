{
  description = ''Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gtk2-master.flake = false;
  inputs.src-gtk2-master.type = "github";
  inputs.src-gtk2-master.owner = "nim-lang";
  inputs.src-gtk2-master.repo = "gtk2";
  inputs.src-gtk2-master.ref = "refs/heads/master";
  
  
  inputs."cairo".type = "github";
  inputs."cairo".owner = "riinr";
  inputs."cairo".repo = "flake-nimble";
  inputs."cairo".ref = "flake-pinning";
  inputs."cairo".dir = "nimpkgs/c/cairo";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gtk2-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gtk2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gtk2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}