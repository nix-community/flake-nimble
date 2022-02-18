{
  description = ''This module provides the genui macro for the Gtk2 toolkit. Genui is a way to specify graphical interfaces in a hierarchical way to more clearly show the structure of the interface as well as simplifying the code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gtkgenui-master.flake = false;
  inputs.src-gtkgenui-master.type = "github";
  inputs.src-gtkgenui-master.owner = "PMunch";
  inputs.src-gtkgenui-master.repo = "gtkgenui";
  inputs.src-gtkgenui-master.ref = "refs/heads/master";
  
  
  inputs."gtk2".type = "github";
  inputs."gtk2".owner = "riinr";
  inputs."gtk2".repo = "flake-nimble";
  inputs."gtk2".ref = "flake-pinning";
  inputs."gtk2".dir = "nimpkgs/g/gtk2";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gtkgenui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gtkgenui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gtkgenui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}